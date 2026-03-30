import 'package:flutter/material.dart';

class SheetFooter extends StatelessWidget {
  final bool isLoading;
  final bool isDisabled;
  final String confirmLabel;
  final IconData confirmIcon;
  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  const SheetFooter({
    super.key,
    required this.isLoading,
    required this.isDisabled,
    required this.confirmLabel,
    required this.confirmIcon,
    required this.onCancel,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.fromLTRB(
        24,
        12,
        24,
        12 + MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: cs.surfaceContainerLow,
        border: Border(
          top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.4)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: onCancel,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              side: BorderSide(color: cs.outlineVariant),
            ),
            child: Text(
              'CANCEL',
              style: tt.labelLarge!.copyWith(color: cs.onSurfaceVariant),
            ),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            onPressed: isLoading || isDisabled ? null : onConfirm,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              backgroundColor: cs.primary,
              foregroundColor: cs.onPrimary,
              disabledBackgroundColor: cs.surfaceContainerHighest,
            ),
            child: isLoading
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: cs.onPrimary,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(confirmIcon, size: 16, color: cs.onPrimary),
                      const SizedBox(width: 8),
                      Text(
                        confirmLabel,
                        style: tt.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: cs.onPrimary,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
