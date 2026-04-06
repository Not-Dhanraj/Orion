import 'package:flutter/material.dart';

class EpisodeRow extends StatelessWidget {
  final String number;
  final String title;
  final String codec;
  final Color statusColor;
  final IconData icon;

  const EpisodeRow({
    super.key,
    required this.number,
    required this.title,
    required this.codec,
    required this.statusColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.1)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 28,
                  child: Text(
                    number,
                    style: tt.labelSmall!.copyWith(color: cs.outline),
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: tt.bodySmall!.copyWith(
                          color: cs.onSurface,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        codec,
                        style: tt.labelSmall!.copyWith(
                          fontSize: 9,
                          color: cs.outline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Icon(icon, size: 16, color: cs.outline.withValues(alpha: 0.5)),
              const SizedBox(width: 16),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
