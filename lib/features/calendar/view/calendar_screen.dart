import 'package:client/features/calendar/providers/calendar_provider.dart';
import 'package:client/features/calendar/widgets/calendar_view.dart';
import 'package:client/features/calendar/widgets/episode_dialog.dart';
import 'package:client/widgets/error_view.dart';
import 'package:client/models/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  late final ValueNotifier<DateTime> _selectedDay;
  late final ValueNotifier<DateTime> _focusedDay;
  late final Map<DateTime, List<CalendarItem>> _events;

  @override
  void initState() {
    super.initState();
    final today = DateTime.now();
    _selectedDay = ValueNotifier(today);
    _focusedDay = ValueNotifier(today);
    _events = {};
  }

  @override
  void dispose() {
    _selectedDay.dispose();
    _focusedDay.dispose();
    super.dispose();
  }

  List<CalendarItem> _getEventsForDay(DateTime day) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return _events[normalizedDay] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    // if (!isSameDay(_selectedDay.value, selectedDay)) {
    setState(() {
      _selectedDay.value = selectedDay;
      _focusedDay.value = focusedDay;
    });

    final episodes = _getEventsForDay(selectedDay);
    if (episodes.isNotEmpty) {
      showEpisodesDialog(context, selectedDay, episodes);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    final calendar = ref.watch(sonarrCalendarProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar'), centerTitle: true),
      body: calendar.when(
        data: (items) {
          _events.clear();
          for (final item in items) {
            if (item.date != null) {
              final date = DateTime(
                item.date!.year,
                item.date!.month,
                item.date!.day,
              );
              if (_events[date] == null) {
                _events[date] = [];
              }
              _events[date]!.add(item);
            }
          }
          return CalendarView(
            focusedDay: _focusedDay,
            selectedDay: _selectedDay,
            getEventsForDay: _getEventsForDay,
            onDaySelected: _onDaySelected,
            onPageChanged: (focusedDay) => _focusedDay.value = focusedDay,
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => ErrorView(
          error: err,
          onRetry: () => ref.refresh(sonarrCalendarProvider),
        ),
      ),
    );
  }
}
