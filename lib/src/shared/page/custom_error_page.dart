import 'package:flutter/material.dart';

class CustomErrorPage extends StatelessWidget {
  final String errorMessage;
  const CustomErrorPage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, color: Colors.red, size: 80.0),
              const SizedBox(height: 16.0),
              Text(errorMessage, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
