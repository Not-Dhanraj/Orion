import 'package:client/core/presentaion/styles/app_styles.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final Function(String) onSearch;
  final String hintText;
  final bool autoFocus;
  final VoidCallback? onFilterTap;

  const SearchBarWidget({
    super.key,
    required this.onSearch,
    this.hintText = 'Search...',
    this.autoFocus = false,
    this.onFilterTap,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();
  bool _showClear = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _showClear = _searchController.text.isNotEmpty;
      });
      widget.onSearch(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(
        horizontal: AppStyles.spacingM,
        vertical: AppStyles.spacingS,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppStyles.borderRadiusL),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.2),
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: AppStyles.spacingM),
          Icon(
            Icons.search,
            color: colorScheme.onSurfaceVariant.withOpacity(0.7),
          ),
          const SizedBox(width: AppStyles.spacingS),
          Expanded(
            child: TextField(
              controller: _searchController,
              autofocus: widget.autoFocus,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: colorScheme.onSurfaceVariant.withOpacity(0.5),
                ),
              ),
              style: TextStyle(color: colorScheme.onSurface),
            ),
          ),
          if (_showClear)
            IconButton(
              icon: Icon(
                Icons.close,
                color: colorScheme.onSurfaceVariant.withOpacity(0.7),
              ),
              onPressed: _clearSearch,
            )
          else if (widget.onFilterTap != null)
            IconButton(
              icon: Icon(
                Icons.filter_list,
                color: colorScheme.onSurfaceVariant.withOpacity(0.7),
              ),
              onPressed: widget.onFilterTap,
            ),
        ],
      ),
    );
  }
}
