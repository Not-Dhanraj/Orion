import 'package:flutter/material.dart';

class InitFooter extends StatefulWidget {
  const InitFooter({super.key});

  @override
  State<InitFooter> createState() => _InitFooterState();
}

class _InitFooterState extends State<InitFooter> with SingleTickerProviderStateMixin {
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
          Container(
            width: 256,
            height: 2,
            color: cs.surfaceContainerHighest,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                // Creates a looping slide effect
                final slideValue = _controller.value;
                int sideFlip = (slideValue * 2).floor(); // 0 or 1
                double localValue = (slideValue * 2) % 1; // 0.0 to 1.0

                return FractionallySizedBox(
                  alignment: sideFlip == 0 ? Alignment.centerLeft : Alignment.centerRight,
                  widthFactor: sideFlip == 0 ? localValue : (1 - localValue),
                  child: Container(
                    decoration: BoxDecoration(
                      color: cs.primary,
                      boxShadow: [
                        BoxShadow(
                          color: cs.primary.withValues(alpha: 0.5),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'v2.4.0-STABLE',
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
                'BUILD NO: 151',
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
