import 'package:flutter/material.dart';
import 'package:client/src/shared/domain/snackbar_config.dart';

class CustomSnackbarContent extends StatefulWidget {
  final String message;
  final SnackbarConfig config;
  final DateTime showTime;
  final Duration duration;

  const CustomSnackbarContent({
    super.key,
    required this.message,
    required this.config,
    required this.showTime,
    required this.duration,
  });

  @override
  State<CustomSnackbarContent> createState() => _CustomSnackbarContentState();
}

class _CustomSnackbarContentState extends State<CustomSnackbarContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _iconScale;
  late final Animation<double> _textOpacity;
  late final Animation<double> _progress;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _iconScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.15, curve: Curves.elasticOut),
      ),
    );

    _textOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.1, curve: Curves.easeOutCubic),
      ),
    );

    _progress = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    final totalMs = widget.duration.inMilliseconds;
    final elapsedMs = DateTime.now()
        .difference(widget.showTime)
        .inMilliseconds
        .clamp(0, totalMs);

    if (elapsedMs < totalMs) {
      _controller.forward(from: elapsedMs / totalMs);
    } else {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.config.backgroundColor,
        border: Border(
          left: BorderSide(color: widget.config.borderColor, width: 3),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                AnimatedBuilder(
                  animation: _iconScale,
                  builder: (context, child) =>
                      Transform.scale(scale: _iconScale.value, child: child),
                  child: Icon(
                    widget.config.icon,
                    color: widget.config.iconColor,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AnimatedBuilder(
                    animation: _textOpacity,
                    builder: (context, child) => Opacity(
                      opacity: _textOpacity.value.clamp(0.0, 1.0),
                      child: Transform.translate(
                        offset: Offset(10 * (1 - _textOpacity.value), 0),
                        child: child,
                      ),
                    ),
                    child: Text(
                      widget.message.toUpperCase(),
                      style: TextStyle(
                        color: widget.config.iconColor,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _progress,
              builder: (context, _) => FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: _progress.value.clamp(0.0, 1.0),
                child: Container(
                  height: 2,
                  color: widget.config.borderColor.withValues(alpha: 0.3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
