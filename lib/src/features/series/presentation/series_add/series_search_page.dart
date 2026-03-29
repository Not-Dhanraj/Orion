import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_search_bar.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_search_results.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_sheet_header.dart';
import 'package:client/src/shared/widgets/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/custom_error_state.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeriesAddPage extends ConsumerStatefulWidget {
  const SeriesAddPage({super.key});

  @override
  ConsumerState<SeriesAddPage> createState() => _SeriesAddPageState();
}

class _SeriesAddPageState extends ConsumerState<SeriesAddPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    // _searchFocus.addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _searchFocus.requestFocus(),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  void _triggerSearch() {
    final q = _searchController.text.trim();
    if (q.isNotEmpty) {
      ref.read(seriesAddController.notifier).searchSeries(q);
    }
  }

  void _clearSearch() {
    _searchController.clear();
    ref.read(seriesAddController.notifier).searchSeries('');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final asyncState = ref.watch(seriesAddController);

    return DraggableScrollableSheet(
      initialChildSize: 0.92,
      minChildSize: 0.5,
      maxChildSize: 1.0,
      expand: false,
      builder: (context, _) {
        return Container(
          color: cs.surface,
          child: Column(
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
                  children: [
                    SeriesSheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: 'Add Series',
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ),
              Expanded(
                child: asyncState.when(
                  loading: () => Stack(
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: AlignmentGeometry.topCenter,
                            child: SizedBox(
                              height: 1.5,
                              width: 800,
                              child: AnimatedProgressBar(
                                width: context.screenWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Center(child: Text('Loading')),
                    ],
                  ),
                  error: (e, stk) => Center(
                    child: CustomErrorState(error: e, stackTrace: stk),
                  ),
                  data: (state) => Entry.opacity(
                    child: Stack(
                      children: [
                        Positioned(
                          child: AnimatedOpacity(
                            opacity: state.isCreating || state.isSearching
                                ? 1
                                : 0,
                            duration: Duration(milliseconds: 300),
                            child: SizedBox(
                              height: 1.5,
                              width: 800,
                              child: AnimatedProgressBar(
                                width: context.screenWidth,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 800),
                            child: SizedBox.expand(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      16,
                                      16,
                                      16,
                                      0,
                                    ),
                                    child: SeriesSearchBar(
                                      controller: _searchController,
                                      focusNode: _searchFocus,
                                      isSearching: state.isSearching,
                                      onSearch: _triggerSearch,
                                      onClear: _clearSearch,
                                    ),
                                  ),
                                  Expanded(child: SeriesSearchBody()),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
