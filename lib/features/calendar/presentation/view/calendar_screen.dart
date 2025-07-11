import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:client/features/calendar/application/providers/calendar_provider.dart';
import 'package:client/features/calendar/application/providers/calendar_screen_providers.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_view.dart';
import 'package:client/features/calendar/presentation/widgets/episode_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarScreen extends ConsumerWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(sonarrCalendarProvider);
    final selectedDay = ref.watch(selectedDayProvider);
    final focusedDay = ref.watch(focusedDayProvider);

    List<CalendarItem> getEventsForDay(DateTime day) {
      final normalizedDay = DateTime(day.year, day.month, day.day);
      final events = ref.watch(sonarrCalendarProvider).asData?.value ?? [];
      final eventMap = <DateTime, List<CalendarItem>>{};
      for (final item in events) {
        if (item.date != null) {
          final date = DateTime(
            item.date!.year,
            item.date!.month,
            item.date!.day,
          );
          if (eventMap[date] == null) {
            eventMap[date] = [];
          }
          eventMap[date]!.add(item);
        }
      }
      return eventMap[normalizedDay] ?? [];
    }

    void onDaySelected(DateTime newSelectedDay, DateTime newFocusedDay) {
      ref.read(selectedDayProvider.notifier).state = newSelectedDay;
      ref.read(focusedDayProvider.notifier).state = newFocusedDay;

      final episodes = getEventsForDay(newSelectedDay);
      if (episodes.isNotEmpty) {
        showEpisodesDialog(context, newSelectedDay, episodes);
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar'), centerTitle: true),
      body: calendar.when(
        data: (items) {
          return CalendarView(
            focusedDay: focusedDay,
            selectedDay: selectedDay,
            getEventsForDay: getEventsForDay,
            onDaySelected: onDaySelected,
            onPageChanged: (newFocusedDay) =>
                ref.read(focusedDayProvider.notifier).state = newFocusedDay,
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
