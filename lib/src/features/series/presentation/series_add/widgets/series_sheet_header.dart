import 'package:client/src/shared/widgets/common/sheet_header.dart';
import 'package:flutter/material.dart';

class SeriesSheetHeader extends StatelessWidget {
  final VoidCallback onClose;
  final String title;
  final String? label;

  const SeriesSheetHeader({
    super.key,
    required this.onClose,
    required this.title,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SheetHeader(onClose: onClose, title: title, label: label);
  }
}
