import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

/// A wrapper for Entry animations that handles safe disposal and prevents
/// layout errors during navigation transitions
class SafeEntry extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double? yOffset;
  final double? xOffset;
  final double? opacity;
  final Curve curve;

  const SafeEntry({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.yOffset,
    this.xOffset,
    this.opacity,
    this.curve = Curves.easeOut,
  }) : super(key: key);

  @override
  SafeEntryState createState() => SafeEntryState();
}

class SafeEntryState extends State<SafeEntry> with RouteAware {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Delay showing the animation to ensure layout is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() => _isVisible = true);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // We could register with a RouteObserver to handle route transitions
    // but for now just using TickerMode is simpler
  }

  @override
  void dispose() {
    // Ensure everything is cleaned up to avoid layout errors
    _isVisible = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Only create animations if ticker mode is active
    // This prevents animation issues when a route is disposed
    final isTickerActive = TickerMode.of(context);
    final shouldAnimate = _isVisible && isTickerActive;

    Widget result = widget.child;

    // Apply each animation only if needed
    if (widget.opacity != null) {
      result = Entry.opacity(
        visible: shouldAnimate,
        duration: widget.duration,
        curve: widget.curve,
        child: result,
      );
    }

    if (widget.yOffset != null || widget.xOffset != null) {
      result = Entry.offset(
        visible: shouldAnimate,
        duration: widget.duration,
        curve: widget.curve,
        xOffset: widget.xOffset ?? 0,
        yOffset: widget.yOffset ?? 0,
        child: result,
      );
    }

    return result;
  }
}
