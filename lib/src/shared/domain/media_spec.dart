class MediaSpec {
  final String label;
  final String value;
  final bool isAccent;

  const MediaSpec({
    required this.label,
    required this.value,
    this.isAccent = false,
  });
}
