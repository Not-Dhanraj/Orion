import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieAddPage extends ConsumerWidget {
  const MovieAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Movie'),
      ),
      body: const Center(
        child: Text('Movie Add Page - Implementation coming soon'),
      ),
    );
  }
}
