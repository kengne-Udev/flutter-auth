import 'package:flutter/material.dart';
import 'dart:async';

class DelayAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  // ignore: use_key_in_widget_constructors
  const DelayAnimation({required this.delay, required this.child});

  @override
  // ignore: library_private_types_in_public_api
  _DelayAnimationState createState() => _DelayAnimationState();
}

class _DelayAnimationState extends State<DelayAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffet;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );

    _animOffet = Tween<Offset>(
      begin: const Offset(0.0, -0.35),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffet,
        child: widget.child,
      ),
    );
  }
}
