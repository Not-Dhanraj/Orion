import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    required this.onSearch,
    required this.onClear,
    required this.searchController,
    required this.focusNode,
    required this.isLoading,
  });

  final Function(String) onSearch;
  final VoidCallback onClear;
  final TextEditingController searchController;
  final FocusNode focusNode;
  final bool isLoading;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget buildSearchField() {
      return TextField(
        controller: widget.searchController,
        focusNode: widget.focusNode,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          hintText: 'Search for a TV show...',
          hintStyle: TextStyle(
            color: theme.colorScheme.onSurface.withAlpha(153), // 0.6 opacity
          ),
          prefixIcon: Icon(
            Icons.search,
            color: theme.colorScheme.primary.withAlpha(178), // 0.7 opacity
          ),
          suffixIcon: widget.searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color:
                        theme.colorScheme.onSurface.withAlpha(178), // 0.7 opacity
                    size: 20,
                  ),
                  onPressed: () {
                    widget.searchController.clear();
                    widget.onClear();
                    setState(() {});
                  },
                )
              : null,
          filled: true,
          fillColor:
              theme.colorScheme.surfaceContainerHighest.withAlpha(76), // 0.3 opacity
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: widget.onSearch,
        onChanged: (_) => setState(() {}),
      );
    }

    Widget buildSearchButton() {
      return ElevatedButton.icon(
        onPressed: widget.isLoading
            ? null
            : () => widget.onSearch(widget.searchController.text),
        icon: widget.isLoading
            ? const SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: Colors.white,
                ),
              )
            : const Icon(Icons.search, size: 18),
        label: Text(
          widget.isLoading ? 'Searching...' : 'Search',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: MediaQuery.of(context).size.width > 600 ? 12 : 8,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(8), // 0.03 opacity
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: MediaQuery.of(context).size.width > 600
          ? Row(
              children: [
                Expanded(child: buildSearchField()),
                const SizedBox(width: 12),
                buildSearchButton(),
              ],
            )
          : Column(
              children: [
                buildSearchField(),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: buildSearchButton(),
                ),
              ],
            ),
    );
  }
}
