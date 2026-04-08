class CalendarDay {
  final int day;
  final String weekdayLabel;
  final bool isToday;
  final bool hasEvents;
  final DateTime date;

  const CalendarDay({
    required this.day,
    required this.weekdayLabel,
    required this.date,
    this.isToday = false,
    this.hasEvents = false,
  });
}
