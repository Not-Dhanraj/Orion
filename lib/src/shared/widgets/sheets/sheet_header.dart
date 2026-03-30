import 'package:flutter/material.dart';

class SheetHeader extends StatelessWidget {
  final VoidCallback onClose;
  final String title;
  final String? label;

  const SheetHeader({
    super.key,
    required this.onClose,
    required this.title,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.close, color: cs.onSurfaceVariant),
            onPressed: onClose,
            tooltip: 'Close',
          ),
          const SizedBox(width: 4),
          Expanded(
            child: label != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label!,
                        style: tt.labelSmall!.copyWith(
                          color: cs.primary,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        title,
                        style: tt.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: tt.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
