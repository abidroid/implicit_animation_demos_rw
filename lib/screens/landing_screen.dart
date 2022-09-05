import 'package:flutter/material.dart';
import 'package:implicit_animation_demos_rw/screens/animated_car_screen.dart';
import 'package:implicit_animation_demos_rw/screens/animated_container_screen.dart';
import 'package:implicit_animation_demos_rw/screens/animated_positioned_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Animated Container'),
            subtitle: const Text('Changing the size of the container'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const AnimatedContainerScreen();
              }));

            },
          ),

          ListTile(
            title: const Text('Animated Positioned'),
            subtitle: const Text('Changing the position of a widget inside Stack'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const AnimatedPositionedScreen();
              }));

            },
          ),

          ListTile(
            title: const Text('Animated Positioned'),
            subtitle: const Text('Changing the position of a Car inside Stack'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const AnimatedCarScreen();
              }));

            },
          ),
        ],
      ),
    );
  }
}
