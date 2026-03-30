import 'package:client/src/shared/widgets/common/sheet_search_bar.dart';
import 'package:flutter/material.dart';

class SeriesSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isSearching;
  final VoidCallback onSearch;
  final VoidCallback onClear;

  const SeriesSearchBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.isSearching,
    required this.onSearch,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return SheetSearchBar(
      controller: controller,
      focusNode: focusNode,
      isSearching: isSearching,
      hintText: 'Search for a TV series by name…',
      onSearch: onSearch,
      onClear: onClear,
    );
  }
}
