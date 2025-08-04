import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, color: Colors.red, size: 80.0),
          const SizedBox(height: 16.0),
          Text(
            errorMessage,
            style: const TextStyle(fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
