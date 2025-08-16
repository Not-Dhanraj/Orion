import 'package:flutter/material.dart';

class ErrorWidgetCe extends StatelessWidget {
  final String? errorMessage;

  const ErrorWidgetCe({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: Colors.red, size: 80.0),
            const SizedBox(height: 16.0),
            Text(
              errorMessage ?? 'An unexpected error occurred.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
