import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class WelcomeSelectorStep extends StatelessWidget {
  final AuthState state;
  final Function(ServiceType) onServiceSelect;
  final VoidCallback onProceed;

  const WelcomeSelectorStep({
    super.key,
    required this.state,
    required this.onServiceSelect,
    required this.onProceed,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final isDesktop = context.isDesktop;

    final canProceed = state.sonarrConfigured || state.radarrConfigured;

    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isDesktop ? 0 : 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  'SYSTEM\nINITIALIZATION',
                  style: tt.displaySmall!.copyWith(
                    letterSpacing: -1.0,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Select a service to establish connection.',
                  style: tt.bodySmall!.copyWith(color: cs.onSurfaceVariant),
                ),
                const SizedBox(height: 40),
                _ServiceCard(
                  title: 'SONARR',
                  subtitle: 'TV Series Management',
                  isLinked: state.sonarrConfigured,
                  onTap: () => onServiceSelect(ServiceType.sonarr),
                ),
                const SizedBox(height: 16),
                _ServiceCard(
                  title: 'RADARR',
                  subtitle: 'Movie Management',
                  isLinked: state.radarrConfigured,
                  onTap: () => onServiceSelect(ServiceType.radarr),
                ),
                const SizedBox(height: 16),
                _ServiceCard(
                  title: 'JELLYFIN',
                  subtitle: 'Media Streaming (Optional)',
                  isLinked: state.jellyfinConfigured,
                  onTap: () => onServiceSelect(ServiceType.jellyfin),
                ),
                const Spacer(),
                if (canProceed) ...[
                  Text(
                    'SERVICE_CHECK // PASSED',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: Colors.green.withValues(alpha: 0.7),
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton.icon(
                      onPressed: onProceed,
                      icon: const Icon(Icons.chevron_right),
                      label: const Text('INITIALIZE SYSTEM'),
                    ),
                  ),
                ] else ...[
                  Center(
                    child: Text(
                      'AWAITING_SERVICE_INPUT...',
                      style: tt.labelSmall!.copyWith(
                        fontSize: 9,
                        color: cs.outline.withValues(alpha: 0.5),
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isLinked;
  final VoidCallback onTap;

  const _ServiceCard({
    required this.title,
    required this.subtitle,
    required this.isLinked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          color: isLinked
              ? cs.primary.withValues(alpha: 0.05)
              : cs.surfaceContainer,
          border: Border.all(
            color: isLinked
                ? cs.primary.withValues(alpha: 0.3)
                : cs.outlineVariant.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: cs.primary.withValues(alpha: 0.1),
          highlightColor: cs.primary.withValues(alpha: 0.05),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: tt.labelSmall!.copyWith(
                        fontSize: 10,
                        color: isLinked ? cs.primary : cs.outline,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: tt.bodySmall!.copyWith(color: cs.onSurfaceVariant),
                    ),
                  ],
                ),
                const Spacer(),
                if (isLinked)
                  Row(
                    children: [
                      Text(
                        'STATUS_OK',
                        style: tt.labelSmall!.copyWith(
                          fontSize: 9,
                          color: cs.primary,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.check_circle, size: 16, color: cs.primary),
                    ],
                  )
                else
                  Icon(Icons.chevron_right, size: 20, color: cs.outline),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
