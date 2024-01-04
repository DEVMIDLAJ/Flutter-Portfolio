// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_assets.dart';

class Profileanimation extends StatefulWidget {
  const Profileanimation({super.key});

  @override
  State<Profileanimation> createState() => _ProfileanimationState();
}

class _ProfileanimationState extends State<Profileanimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        AppAssets.profile,
        width: size.width * 1,
        height: size.height * 1,
      ),
    );
  }
}
