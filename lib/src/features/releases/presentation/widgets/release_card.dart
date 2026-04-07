import 'package:client/src/features/releases/domain/release_item.dart';
import 'package:client/src/shared/utils/format_utils.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReleaseCard extends StatelessWidget {
  final ReleaseItem release;
  final bool isDownloading;
  final bool isAnyDownloading;
  final VoidCallback onDownload;

  const ReleaseCard({
    super.key,
    required this.release,
    required this.isDownloading,
    required this.isAnyDownloading,
    required this.onDownload,
  });

  String get _ageText {
    if (release.publishDate == null) return 'Unknown';
    final diff = DateTime.now().difference(release.publishDate!);
    if (diff.inDays > 0) return '${diff.inDays}d ago';
    if (diff.inHours > 0) return '${diff.inHours}h ago';
    return '${diff.inMinutes}m ago';
  }

  Future<void> _launchInfoUrl(BuildContext context) async {
    final url = Uri.parse(release.infoUrl!);
    if (!await launchUrl(url) && context.mounted) {
      CustomSnackbar.show(
        context,
        message: 'Could not open ${release.infoUrl}',
        type: CustomSnackbarType.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasRejections = release.rejections.isNotEmpty;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border.all(
          color: hasRejections
              ? cs.error.withValues(alpha: 0.4)
              : cs.outlineVariant.withValues(alpha: 0.4),
          width: hasRejections ? 1.5 : 1.0,
        ),
        gradient: hasRejections
            ? LinearGradient(
                colors: [cs.surface, cs.errorContainer.withValues(alpha: 0.12)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ReleaseCardHeader(
              release: release,
              isDownloading: isDownloading,
              isAnyDownloading: isAnyDownloading,
              ageText: _ageText,
              onDownload: onDownload,
              onLaunchInfoUrl: () => _launchInfoUrl(context),
            ),
            const SizedBox(height: 8),
            _ReleaseCardTags(release: release),
            if (hasRejections) ...[
              const SizedBox(height: 10),
              _ReleaseCardRejections(rejections: release.rejections),
            ],
          ],
        ),
      ),
    );
  }
}

class _ReleaseCardHeader extends StatelessWidget {
  final ReleaseItem release;
  final bool isDownloading;
  final bool isAnyDownloading;
  final String ageText;
  final VoidCallback onDownload;
  final VoidCallback onLaunchInfoUrl;

  const _ReleaseCardHeader({
    required this.release,
    required this.isDownloading,
    required this.isAnyDownloading,
    required this.ageText,
    required this.onDownload,
    required this.onLaunchInfoUrl,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final hasRejections = release.rejections.isNotEmpty;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (release.quality != null) ...[
                Text(
                  release.quality!.toUpperCase(),
                  style: (tt.labelSmall ?? const TextStyle()).copyWith(
                    color: cs.primary,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
              ],
              Text(
                release.title,
                style: (tt.bodyMedium ?? const TextStyle()).copyWith(
                  fontWeight: FontWeight.w600,
                  color: hasRejections ? cs.error : cs.onSurface,
                ),
              ),
              const SizedBox(height: 6),
              _ReleaseCardMeta(release: release, ageText: ageText),
            ],
          ),
        ),
        const SizedBox(width: 8),
        _ReleaseCardActions(
          release: release,
          isDownloading: isDownloading,
          isAnyDownloading: isAnyDownloading,
          onDownload: onDownload,
          onLaunchInfoUrl: onLaunchInfoUrl,
        ),
      ],
    );
  }
}

class _ReleaseCardMeta extends StatelessWidget {
  final ReleaseItem release;
  final String ageText;

  const _ReleaseCardMeta({required this.release, required this.ageText});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Row(
      children: [
        Icon(Icons.storage_rounded, size: 13, color: cs.onSurfaceVariant),
        const SizedBox(width: 4),
        Text(
          FormatUtils.formatFileSize(release.size.toDouble()),
          style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
        ),
        const SizedBox(width: 12),
        Icon(Icons.schedule_rounded, size: 13, color: cs.onSurfaceVariant),
        const SizedBox(width: 4),
        Text(
          ageText,
          style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _ReleaseCardActions extends StatelessWidget {
  final ReleaseItem release;
  final bool isDownloading;
  final bool isAnyDownloading;
  final VoidCallback onDownload;
  final VoidCallback onLaunchInfoUrl;

  const _ReleaseCardActions({
    required this.release,
    required this.isDownloading,
    required this.isAnyDownloading,
    required this.onDownload,
    required this.onLaunchInfoUrl,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final buttonColor = cs.primary.withValues(alpha: 0.85);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (release.infoUrl?.isNotEmpty == true)
          IconButton(
            icon: Icon(
              Icons.open_in_new_rounded,
              size: 18,
              color: cs.onSurfaceVariant,
            ),
            constraints: const BoxConstraints(),
            padding: const EdgeInsets.all(4),
            tooltip: 'Open info page',
            onPressed: onLaunchInfoUrl,
          ),
        const SizedBox(height: 6),
        Tooltip(
          message: isAnyDownloading && !isDownloading
              ? 'Another release is being grabbed'
              : '',
          child: OutlinedButton.icon(
            icon: isDownloading
                ? SizedBox(
                    width: 12,
                    height: 12,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: buttonColor,
                    ),
                  )
                : Icon(Icons.download_rounded, size: 14, color: buttonColor),
            label: Text(
              isDownloading ? 'GRABBING...' : 'GRAB',
              style: (tt.labelSmall ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.bold,
                color: buttonColor,
              ),
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              side: BorderSide(color: buttonColor, width: 1),
              shape: const RoundedRectangleBorder(),
            ),
            onPressed: isAnyDownloading ? null : onDownload,
          ),
        ),
      ],
    );
  }
}

class _ReleaseCardTags extends StatelessWidget {
  final ReleaseItem release;

  const _ReleaseCardTags({required this.release});

  Color _seedersColor(BuildContext context) {
    if (release.seeders == 0) return Theme.of(context).colorScheme.error;
    if (release.seeders < 5) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        if (release.indexer != null)
          _ReleaseTag(icon: Icons.source_rounded, label: release.indexer!),
        if (release.protocol != null)
          _ReleaseTag(icon: Icons.sync_rounded, label: release.protocol!),
        if (release.languages?.isNotEmpty == true)
          _ReleaseTag(icon: Icons.language_rounded, label: release.languages!),
        _ReleaseTag(
          icon: Icons.arrow_circle_up_rounded,
          label: '${release.seeders}S',
          color: _seedersColor(context),
        ),
        _ReleaseTag(
          icon: Icons.arrow_circle_down_rounded,
          label: '${release.leechers}L',
        ),
      ],
    );
  }
}

class _ReleaseTag extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _ReleaseTag({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final effectiveColor = color ?? cs.onSurfaceVariant;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: effectiveColor.withValues(alpha: 0.4)),
        color: effectiveColor.withValues(alpha: 0.06),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: effectiveColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: effectiveColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReleaseCardRejections extends StatelessWidget {
  final List<String> rejections;

  const _ReleaseCardRejections({required this.rejections});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: cs.error.withValues(alpha: 0.6), width: 2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'REJECTED',
            style: (tt.labelSmall ?? const TextStyle()).copyWith(
              color: cs.error,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          ...rejections.map(
            (reason) => Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                '· $reason',
                style: tt.bodySmall?.copyWith(
                  color: cs.error.withValues(alpha: 0.85),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
