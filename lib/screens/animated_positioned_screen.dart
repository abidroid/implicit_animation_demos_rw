import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedScreen> createState() => _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {

  late double _screenWidth;
  late double _screenHeight;
  double _bottomOffset = 400;

  @override
  Widget build(BuildContext context) {

    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;

    debugPrint(_screenWidth.toString());
    debugPrint(_screenHeight.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'down',
        onPressed: (){
          setState((){
            _bottomOffset = 0;

          });
        }, child: const Icon(Icons.arrow_downward),),
      body: Container(
        width: _screenWidth,
        height: _screenHeight,
        color: Colors.yellow,
        child: Stack(

          children: [
            AnimatedPositioned(
              curve: Curves.bounceOut,
                bottom: _bottomOffset,
                left: _screenWidth / 2 - 50,

                duration: const Duration(milliseconds: 700),

                child: Container(

              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            )),

          ],
        ),
      ),
    );
  }
}
