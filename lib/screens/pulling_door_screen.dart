import 'package:flutter/material.dart';

class PullingDoorScreen extends StatelessWidget {
  const PullingDoorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform.rotate'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          color: Colors.black87,

          child: Transform(
            transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(0.7),
            alignment: Alignment.centerLeft,
            child: Container(
              width: 300,
              height: 400,
              color: Colors.orangeAccent,
              padding: const EdgeInsets.only(right: 30),
              alignment: Alignment.centerRight,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
