import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedLoadingText extends StatefulWidget {
  const AnimatedLoadingText({super.key});

  @override
  State<AnimatedLoadingText> createState() => AnimatedLoadingTextState();
}

class AnimatedLoadingTextState extends State<AnimatedLoadingText> {
  int _dotCount = 0;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() => _dotCount = (_dotCount + 1) % 4);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('Loading${('.' * _dotCount).padRight(3)}');
  }
}
