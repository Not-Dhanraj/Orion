import 'package:client/src/features/releases/presentation/widgets/release_card.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:client/src/features/releases/presentation/release_controller.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:with_opacity/with_opacity.dart';

class ReleaseSheet extends ConsumerWidget {
  final ReleaseTarget target;

  const ReleaseSheet({super.key, required this.target});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final asyncState = ref.watch(releaseControllerProvider(target));
    final controller = ref.read(releaseControllerProvider(target).notifier);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.9,
      ),
      child: Container(
        color: cs.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: cs.surfaceContainerLow,
                  border: Border(
                    bottom: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 3),
                    SheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: target.title,
                      label: 'RELEASES',
                    ),

                    if (asyncState.hasValue)
                      _FilterToolbar(
                        showRejected: asyncState.value!.showRejected,
                        releaseCount: controller.filteredReleases().length,
                        onToggle: controller.toggleShowRejected,
                      ),
                    const SizedBox(height: 6),
                  ],
                ),
              ),

              Flexible(
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                  alignment: Alignment.topCenter,
                  child: asyncState.when(
                    data: (state) {
                      final releases = controller.filteredReleases();
                      return releases.isEmpty
                          ? Center(
                              child: Padding(
                                padding: const EdgeInsets.all(48),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.search_off_rounded,
                                      size: 40,
                                      color: cs.onSurfaceVariant
                                          .withCustomOpacity(0.4),
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'No releases match your filters',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: cs.onSurfaceVariant,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : ListView.builder(
                              shrinkWrap: releases.length < 5,
                              padding: const EdgeInsets.fromLTRB(
                                16,
                                12,
                                16,
                                32,
                              ),
                              itemCount: releases.length,
                              itemBuilder: (context, index) => ReleaseCard(
                                release: releases[index],
                                isDownloading:
                                    state.downloadingGuid ==
                                    releases[index].guid,
                                isAnyDownloading: state.downloadingGuid != null,
                                onDownload: () {
                                  controller.downloadRelease(
                                    indexerId: releases[index].indexerId,
                                    guid: releases[index].guid,
                                    onSuccess: () {
                                      if (context.mounted) {
                                        Navigator.of(context).pop();
                                        CustomSnackbar.show(
                                          context,
                                          message: 'Download started',
                                          type: CustomSnackbarType.success,
                                        );
                                      }
                                    },
                                    onError: (e) {
                                      if (context.mounted) {
                                        CustomSnackbar.show(
                                          context,
                                          message: 'Download failed: $e',
                                          type: CustomSnackbarType.error,
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                            );
                    },
                    loading: () => SizedBox(
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            child: SizedBox(
                              height: 1.5,
                              child: AnimatedProgressBar(),
                            ),
                          ),
                          const Center(child: AnimatedLoadingText()),
                        ],
                      ),
                    ),
                    error: (e, stk) => Padding(
                      padding: const EdgeInsets.all(32),
                      child: CustomErrorState(
                        error: e,
                        stackTrace: stk,
                        onRetry: () =>
                            ref.invalidate(releaseControllerProvider(target)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterToolbar extends StatelessWidget {
  final bool showRejected;
  final int releaseCount;
  final void Function(bool) onToggle;

  const _FilterToolbar({
    required this.showRejected,
    required this.releaseCount,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => onToggle(!showRejected),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: showRejected
                    ? cs.primary.withAlpha(200)
                    : Colors.transparent,
                border: Border.all(
                  color: showRejected
                      ? cs.outlineVariant
                      : cs.outlineVariant.withValues(alpha: 0.6),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showRejected) ...[
                    Icon(Icons.check, size: 12, color: cs.onSecondaryContainer),
                    const SizedBox(width: 5),
                  ],
                  Text(
                    'SHOW REJECTED',
                    style: tt.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.8,
                      color: showRejected
                          ? cs.onSecondaryContainer
                          : cs.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '$releaseCount release${releaseCount == 1 ? '' : 's'}',
            style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
