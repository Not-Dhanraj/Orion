import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeriesHome extends ConsumerWidget {
  const SeriesHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(
        'Series Home',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
