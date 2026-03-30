import 'package:client/src/features/calendar/presentation/calendar_home_controller.dart';
import 'package:client/src/features/calendar/presentation/widgets/calendar_date_strip.dart';
import 'package:client/src/features/calendar/presentation/widgets/calendar_episode_card.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarState = ref.watch(calendarHomeController);
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final notifier = ref.read(calendarHomeController.notifier);

    return Entry.opacity(
      child: calendarState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => CustomErrorState(
          error: error,
          stackTrace: stack,
          onRetry: () => notifier.refreshCalendar(),
        ),
        data: (calState) => RefreshIndicator(
          onRefresh: notifier.refreshCalendar,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 32, 24, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  calState.windowLabel,
                                  style: tt.headlineLarge!.copyWith(
                                    letterSpacing: -1.5,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'TRACKING ACTIVE',
                                  style: tt.labelSmall!.copyWith(
                                    color: cs.primary.withValues(alpha: 0.65),
                                    letterSpacing: 2.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _NavButton(
                            icon: Icons.chevron_left,
                            onTap: calState.canGoPrev
                                ? notifier.shiftBack
                                : null,
                          ),
                          const SizedBox(width: 8),
                          _NavButton(
                            icon: Icons.chevron_right,
                            onTap: calState.canGoNext
                                ? notifier.shiftForward
                                : null,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CalendarDateStrip(
                        days: calState.days,
                        selectedIndex: calState.selectedDayIndex,
                        onDaySelected: notifier.selectDay,
                      ),
                    ),

                    const SizedBox(height: 32),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: cs.outlineVariant.withValues(alpha: 0.3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              DateFormat('EEE, MMM d')
                                  .format(
                                    calState
                                        .days[calState.selectedDayIndex]
                                        .date,
                                  )
                                  .toUpperCase()
                                  .replaceAll(' ', '_'),
                              style: tt.labelSmall!.copyWith(
                                color: cs.primary,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: cs.outlineVariant.withValues(alpha: 0.3),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    if (calState.entries.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 32,
                        ),
                        child: Center(
                          child: Text(
                            'NO TRANSMISSIONS SCHEDULED',
                            style: tt.labelSmall!.copyWith(
                              color: cs.outline,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      )
                    else
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: calState.entries.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (_, i) =>
                            CalendarEpisodeCard(episode: calState.entries[i]),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const _NavButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final enabled = onTap != null;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedOpacity(
        opacity: enabled ? 1.0 : 0.35,
        duration: const Duration(milliseconds: 150),
        child: Container(
          width: 40,
          height: 40,
          color: cs.surfaceContainer,
          child: Icon(icon, color: cs.onSurfaceVariant, size: 20),
        ),
      ),
    );
  }
}
