import 'package:client/src/constants/app_const.dart';
import 'package:flutter/material.dart';

class SettingsAboutCard extends StatelessWidget {
  const SettingsAboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.08)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Orion',
                    style: tt.titleLarge!.copyWith(
                      color: cs.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'VERSION ${AppConst().appVersion.toUpperCase()}',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.outline,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.memory,
                color: cs.primary.withValues(alpha: 0.4),
                size: 36,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'A modern, responsive, and feature-rich cross-platform client for Radarr and Sonarr media management systems',
            style: tt.bodySmall!.copyWith(
              color: cs.onSurfaceVariant,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
