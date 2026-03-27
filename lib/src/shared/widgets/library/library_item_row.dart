import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class LibraryItemRow extends StatefulWidget {
  final String title;
  final String year;
  final String? posterUrl;
  final Color statusColor;
  final VoidCallback? onTap;

  const LibraryItemRow({
    super.key,
    required this.title,
    required this.year,
    required this.posterUrl,
    required this.statusColor,
    this.onTap,
  });

  @override
  State<LibraryItemRow> createState() => _LibraryItemRowState();
}

class _LibraryItemRowState extends State<LibraryItemRow> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color:
                    (Theme.of(context).dividerTheme.color ?? Colors.transparent)
                        .withValues(alpha: 0.1),
              ),
            ),
          ),
          child: Row(
            children: [
              Container(width: 8, height: 8, color: widget.statusColor),
              const SizedBox(width: 12),
              Container(
                width: 40,
                height: 60,
                decoration: BoxDecoration(
                  color: cs.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.05),
                  ),
                ),
                child: widget.posterUrl != null
                    ? CachedNetworkImage(
                        imageUrl: widget.posterUrl!,
                        memCacheWidth: 40,
                        fit: BoxFit.fill,
                        errorWidget: (context, _, _) => Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF1C1B1D), Color(0xFF2A2A2C)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Icon(TablerIcons.photo_exclamation, size: 15),
                        ),
                      )
                    : Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF1C1B1D), Color(0xFF2A2A2C)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(TablerIcons.photo_exclamation, size: 15),
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        style: tt.titleSmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: _isHovered ? cs.primary : cs.onSurface,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '(${widget.year})',
                      style: tt.labelSmall!.copyWith(
                        fontSize: 11,
                        color: cs.outline.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
