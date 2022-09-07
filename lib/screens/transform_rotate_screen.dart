import 'dart:math';

import 'package:flutter/material.dart';

class TransformRotateScreen extends StatelessWidget {
  const TransformRotateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform.rotate'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 100,
              child: Transform(
                // converting degrees into radians

                transform: Matrix4.rotationZ(15 * pi / 180),
                // it is also default origin
                alignment: Alignment.topLeft,
                //origin: const Offset(100, 100),
                child: Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 100,
              child: Transform.rotate(
                angle: 15 * pi / 180,
                alignment: Alignment.center, // center by default
                child: Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
