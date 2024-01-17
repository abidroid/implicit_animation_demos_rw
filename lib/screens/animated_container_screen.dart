import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {

  bool _boxShow = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _boxShow = !_boxShow;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),

          opacity: _boxShow ? 1.0 : 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            width: _boxShow ? 200 : 100,
            height: _boxShow ? 200 : 100,
            color: _boxShow ? Colors.green : Colors.yellow,
          ),
        ),
      ),
    );
  }
}
