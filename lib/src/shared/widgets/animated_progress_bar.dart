import 'package:flutter/material.dart';

class AnimatedProgressBar extends StatefulWidget {
  final Animation<double>? animation;
  final double width;
  final double height;
  final Color? trackColor;
  final Color? indicatorColor;
  final double glowRadius;

  const AnimatedProgressBar({
    super.key,
    this.animation,
    this.width = 256,
    this.height = 2,
    this.trackColor,
    this.indicatorColor,
    this.glowRadius = 15,
  });

  @override
  State<AnimatedProgressBar> createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar>
    with SingleTickerProviderStateMixin {
  AnimationController? _internalController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    if (widget.animation == null) {
      _internalController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
      )..repeat();
      _animation = _internalController!;
    } else {
      _animation = widget.animation!;
    }
  }

  @override
  void didUpdateWidget(AnimatedProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.animation != null && _internalController != null) {
      _internalController!.dispose();
      _internalController = null;
      _animation = widget.animation!;
    } else if (widget.animation == null && _internalController == null) {
      _internalController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
      )..repeat();
      _animation = _internalController!;
    }
  }

  @override
  void dispose() {
    _internalController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final track = widget.trackColor ?? cs.surfaceContainerHighest;
    final indicator = widget.indicatorColor ?? cs.primary;

    return Container(
      width: widget.width,
      height: widget.height,
      color: track,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final slideValue = _animation.value;
          final sideFlip = (slideValue * 2).floor();
          final localValue = (slideValue * 2) % 1;

          return FractionallySizedBox(
            alignment: sideFlip == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            widthFactor: sideFlip == 0 ? localValue : (1 - localValue),
            child: Container(
              decoration: BoxDecoration(
                color: indicator,
                boxShadow: [
                  BoxShadow(
                    color: indicator.withValues(alpha: 0.5),
                    blurRadius: widget.glowRadius,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
