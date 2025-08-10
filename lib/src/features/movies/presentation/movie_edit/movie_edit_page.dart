import 'package:flutter/material.dart';
import 'package:radarr/radarr.dart';

class MovieEditPage extends StatelessWidget {
  final MovieResource movie;
  
  const MovieEditPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Movie'),
      content: const Text('Movie editing functionality will be implemented soon.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
