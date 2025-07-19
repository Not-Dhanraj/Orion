import 'package:client/core/presentation/styles/app_styles.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;
  final String? customMessage;

  const ErrorView({
    super.key,
    required this.error,
    required this.onRetry,
    this.customMessage,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final errorMessage = customMessage ?? 'Something went wrong';

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppStyles.spacingL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppStyles.spacingL),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                size: 64,
                color: colorScheme.error,
              ),
            ),
            const SizedBox(height: AppStyles.spacingL),
            Text(
              errorMessage,
              style: AppStyles.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppStyles.spacingS),
            Text(
              error.toString(),
              style: AppStyles.bodyMedium.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: AppStyles.spacingL),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppStyles.spacingL,
                  vertical: AppStyles.spacingM,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppStyles.borderRadiusM),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
