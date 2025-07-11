class CalendarItem {
  final String title;
  final String subtitle;
  final DateTime? date;
  final int? seasonNumber;
  final int? episodeNumber;

  CalendarItem({
    required this.title,
    required this.subtitle,
    this.date,
    this.seasonNumber,
    this.episodeNumber,
  });
}
