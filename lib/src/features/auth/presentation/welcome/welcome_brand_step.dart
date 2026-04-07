import 'package:client/src/constants/app_const.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class WelcomeBrandStep extends StatefulWidget {
  final VoidCallback onBegin;
  const WelcomeBrandStep({super.key, required this.onBegin});

  @override
  State<WelcomeBrandStep> createState() => _WelcomeBrandStepState();
}

class _WelcomeBrandStepState extends State<WelcomeBrandStep>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseCtrl;

  @override
  void initState() {
    super.initState();
    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulseCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width;
    final isDesktop = context.isDesktop;

    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isDesktop ? 0 : 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 3),
                FadeTransition(
                  opacity: _pulseCtrl,
                  child: Icon(Icons.memory, size: 40, color: cs.primary),
                ),
                const SizedBox(height: 24),
                Text(
                  'ORION',
                  style: tt.displayLarge!.copyWith(
                    fontSize: isDesktop ? 96 : (width < 400 ? 56 : 72),
                    height: 1.0,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${AppConst().appVersion} // BUILD: ${AppConst().buildNo}'
                      .toUpperCase(),
                  style: tt.labelSmall!.copyWith(
                    fontSize: 10,
                    color: cs.primary,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(height: 24),
                Container(height: 1, width: 80, color: cs.outlineVariant),
                const SizedBox(height: 24),
                Text(
                  'A modern, responsive, and feature-rich cross-platform client for Radarr and Sonarr media management systems. ',
                  style: tt.bodyMedium!.copyWith(height: 1.7),
                ),
                const Spacer(flex: 4),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton.icon(
                    onPressed: widget.onBegin,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('BEGIN INITIALIZATION'),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    'SYSTEM_INIT // FIRST RUN DETECTED',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.outline,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
