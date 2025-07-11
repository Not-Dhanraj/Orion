import 'package:flutter/material.dart';

class AddSeriesButton extends StatelessWidget {
  const AddSeriesButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary,
            Color.fromRGBO(
              (theme.colorScheme.primary.r * 255.0).round() & 0xff,
              (theme.colorScheme.primary.g * 255.0).round() & 0xff,
              (((theme.colorScheme.primary.b * 255.0).round() & 0xff) + 40)
                  .clamp(0, 255),
              1,
            ),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withAlpha(102), // 0.4 opacity
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add, size: 20),
            const SizedBox(width: 8),
            Text(
              'ADD SERIES',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimary,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
