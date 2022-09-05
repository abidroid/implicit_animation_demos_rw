import 'package:flutter/material.dart';

class AnimatedCarScreen extends StatefulWidget {
  const AnimatedCarScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCarScreen> createState() => _AnimatedCarScreenState();
}

class _AnimatedCarScreenState extends State<AnimatedCarScreen> {
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Car Movement'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _left = MediaQuery.of(context).size.width - 100;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            left: _left,
            top: MediaQuery.of(context).size.height / 2 ,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOutQuint,
            child:  Image.asset(
              'assets/images/car.png',
              width: 100,
              height: 50,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
