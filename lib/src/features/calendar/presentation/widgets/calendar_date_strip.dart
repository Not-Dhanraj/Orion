import 'package:client/src/features/calendar/domain/calendar_ui_models.dart';
import 'package:flutter/material.dart';

class CalendarDateStrip extends StatelessWidget {
  final List<CalendarDay> days;
  final int selectedIndex;
  final ValueChanged<int> onDaySelected;

  const CalendarDateStrip({
    super.key,
    required this.days,
    required this.selectedIndex,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return SizedBox(
      height: 96,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < days.length; i++) ...[
              if (i > 0) const SizedBox(width: 8),
              _DayCell(
                day: days[i],
                isSelected: i == selectedIndex,
                onTap: () => onDaySelected(i),
                cs: cs,
                tt: tt,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  final CalendarDay day;
  final bool isSelected;
  final VoidCallback onTap;
  final ColorScheme cs;
  final TextTheme tt;

  const _DayCell({
    required this.day,
    required this.isSelected,
    required this.onTap,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        width: 60,
        height: 88,
        decoration: BoxDecoration(
          color: isSelected ? cs.primary : cs.surfaceContainerLow,
          border: (!isSelected && day.hasEvents)
              ? Border(
                  bottom: BorderSide(
                    color: cs.primary.withValues(alpha: 0.45),
                    width: 2,
                  ),
                )
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: cs.primary.withValues(alpha: 0.2),
                    blurRadius: 20,
                  ),
                ]
              : null,
        ),
        child: Opacity(
          opacity: (!isSelected && !day.hasEvents) ? 0.4 : 1.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day.weekdayLabel,
                style: tt.labelSmall!.copyWith(
                  color: isSelected
                      ? cs.onPrimary.withValues(alpha: 0.8)
                      : cs.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 9,
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                day.day.toString().padLeft(2, '0'),
                style: tt.titleMedium!.copyWith(
                  color: isSelected ? cs.onPrimary : cs.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (day.hasEvents && !isSelected) ...[
                const SizedBox(height: 4),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: cs.primary.withValues(alpha: 0.6),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
