import 'package:employee_app/animation_effect.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // void toggle() {
  //   if (_animationController.isDismissed) {
  //     _animationController.forward();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimationEffect(),
    );
  }
}
