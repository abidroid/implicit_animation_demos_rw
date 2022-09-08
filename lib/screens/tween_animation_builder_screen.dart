import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatefulWidget {
  const TweenAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderScreen> createState() =>
      _TweenAnimationBuilderScreenState();
}

class _TweenAnimationBuilderScreenState
    extends State<TweenAnimationBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Builder'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 1000),
          tween: Tween<double>(begin: 0.0, end: 360.0),

          builder: (_, value, child) {
            return Transform.rotate(
              angle: (value * pi / 180), // converting degree to radians
              child: child,
            );
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: const Center(
              child: Icon(Icons.shopping_cart, color: Colors.white, size: 50,),
            ),
          ),
        ),
      ),
    );
  }
}
