extension StringExtension on String {
  String capitalizeByWord() {
    if (trim().isEmpty) {
      return '';
    }
    return split(' ')
        .map((element) => "${element[0].toUpperCase()}${element.substring(1)}")
        .join(" ");
  }
}
