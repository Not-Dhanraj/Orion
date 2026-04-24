import 'package:flutter/material.dart';

class PlayerControlButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback onTap;

  const PlayerControlButton({
    super.key,
    required this.icon,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      iconSize: size,
      splashRadius: size * 0.75,
      icon: Icon(icon, color: Colors.white, size: size),
    );
  }
}
