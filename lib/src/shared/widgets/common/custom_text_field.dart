import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final bool enabled;
  final VoidCallback? onToggle;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.enabled = true,
    this.onToggle,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return TextFormField(
      obscureText: obscure,
      controller: controller,
      enabled: enabled,
      validator: validator,
      style: tt.labelLarge!.copyWith(color: cs.onSurface),
      cursorColor: cs.primary,
      cursorWidth: 2,
      cursorHeight: 16,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: cs.surfaceContainerLowest,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.outlineVariant, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.error, width: 1),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: cs.error, width: 2),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: cs.outlineVariant.withValues(alpha: 0.4),
          ),
        ),
        suffixIcon: onToggle != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  onPressed: onToggle,
                  icon: Icon(
                    obscure ? Icons.visibility_off : Icons.visibility,
                    color: cs.outline,
                    size: 20,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
