import 'package:flutter/material.dart';

class FormSectionHeader extends StatelessWidget {
  final String label;

  const FormSectionHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: tt.labelSmall!.copyWith(
          color: cs.primary,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class OutlinedFormSection extends StatelessWidget {
  final List<Widget> children;

  const OutlinedFormSection({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.4)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}

class FormRowDivider extends StatelessWidget {
  const FormRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
      color: cs.outlineVariant.withValues(alpha: 0.4),
    );
  }
}

class LabeledDropdownRow extends StatelessWidget {
  final String label;
  final String subtitle;
  final Widget child;

  const LabeledDropdownRow({
    super.key,
    required this.label,
    required this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: tt.bodyMedium!.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: tt.bodySmall!.copyWith(color: cs.onSurfaceVariant),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}
