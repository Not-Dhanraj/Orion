import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/widgets/sheets/sheet_search_bar.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_search_results.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeriesSearchPage extends ConsumerStatefulWidget {
  const SeriesSearchPage({super.key});

  @override
  ConsumerState<SeriesSearchPage> createState() => _SeriesSearchPageState();
}

class _SeriesSearchPageState extends ConsumerState<SeriesSearchPage> {
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

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.screenHeight * .935),
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
                  children: [
                    SheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: 'Search Series',
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
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 800),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  16,
                                  16,
                                  16,
                                  0,
                                ),
                                child: SheetSearchBar(
                                  controller: _searchController,
                                  focusNode: _searchFocus,
                                  isSearching: state.isSearching,
                                  hintText: 'Search for a TV series by name…',
                                  onSearch: _triggerSearch,
                                  onClear: _clearSearch,
                                ),
                              ),
                              Flexible(child: SeriesSearchBody()),
                            ],
                          ),
                        ),
                      ],
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
