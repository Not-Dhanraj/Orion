import 'package:client/src/constants/app_const.dart';
import 'package:client/src/shared/widgets/animated_progress_bar.dart';
import 'package:flutter/material.dart';

class InitFooter extends StatefulWidget {
  const InitFooter({super.key});

  @override
  State<InitFooter> createState() => _InitFooterState();
}

class _InitFooterState extends State<InitFooter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    return Positioned(
      bottom: 48,
      left: 0,
      right: 0,
      child: Column(
        children: [
          AnimatedProgressBar(animation: _controller),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppConst().appVersion.toUpperCase(),
                    style: tt.labelSmall!.copyWith(color: cs.primary),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '|',
                    style: tt.labelSmall!.copyWith(
                      color: cs.onSurface.withValues(alpha: 0.4),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'LOADING APP INFO...',
                    style: tt.labelSmall!.copyWith(color: cs.primary),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'BUILD NO: ${AppConst().buildNo}',
                style: tt.labelSmall!.copyWith(
                  fontSize: 9,
                  color: cs.onSurface.withValues(alpha: 0.3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
