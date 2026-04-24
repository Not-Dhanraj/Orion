import 'package:flutter/material.dart';

class PlayerGradientOverlay extends StatelessWidget {
  final Widget top;
  final Widget center;
  final Widget bottom;

  const PlayerGradientOverlay({
    super.key,
    required this.top,
    required this.center,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 140,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black87, Colors.transparent],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 160,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black87, Colors.transparent],
              ),
            ),
          ),
        ),
        Positioned(top: 0, left: 0, right: 0, child: top),
        Center(child: center),
        Positioned(bottom: 0, left: 0, right: 0, child: bottom),
      ],
    );
  }
}
