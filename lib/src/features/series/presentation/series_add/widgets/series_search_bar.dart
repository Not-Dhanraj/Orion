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
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return TextField(
      controller: controller,
      focusNode: focusNode,
      style: tt.bodyLarge!.copyWith(color: cs.onSurface),
      textInputAction: TextInputAction.search,
      cursorColor: cs.primary,
      cursorWidth: 2,
      cursorHeight: 16,
      onSubmitted: (_) => onSearch(),
      decoration: InputDecoration(
        hintText: 'Search for a TV series by name…',
        hintStyle: tt.bodyLarge!.copyWith(color: cs.outline),
        filled: true,
        fillColor: cs.surfaceContainerLowest,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.outlineVariant, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (controller.text.isNotEmpty)
              IconButton(
                icon: Icon(Icons.clear, color: cs.outline, size: 20),
                onPressed: onClear,
                tooltip: 'Clear',
              ),
            if (controller.text.isNotEmpty) SizedBox(width: 8),

            Container(
              margin: const EdgeInsets.only(right: 6, top: 6, bottom: 6),
              child: ElevatedButton(
                onPressed: isSearching ? null : onSearch,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  backgroundColor: cs.primary,
                  foregroundColor: cs.onPrimary,
                  disabledBackgroundColor: cs.surfaceContainerHighest,
                ),
                child: isSearching
                    ? SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: cs.onPrimary,
                        ),
                      )
                    : Text(
                        'SEARCH',
                        style: tt.labelSmall!.copyWith(
                          fontWeight: FontWeight.w900,
                          color: cs.onPrimary,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
