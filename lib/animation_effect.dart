import 'package:employee_app/about_app.dart';
import 'package:employee_app/style.dart';
import 'package:employee_app/value.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/Slides/abhilasha_mam_slide.dart';
import 'package:employee_app/Slides/alok_sir_slide.dart';
import 'package:employee_app/Slides/amita_mam_slide.dart';
import 'package:employee_app/Slides/pradeep_sir_slide.dart';
import 'package:employee_app/Slides/scott_seabolt_sir_slide.dart';

import 'about_us.dart';
import 'assets_path.dart';
import 'dart:math' as math;

import 'home.dart';

class AnimationEffect extends StatefulWidget {
  const AnimationEffect({Key? key}) : super(key: key);

  @override
  State<AnimationEffect> createState() => _AnimationEffectState();
}

class _AnimationEffectState extends State<AnimationEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool _canBeDragged = false;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var greenScreen = SafeArea(
      child: Container(
        color: const Color(0xFF31a950),
        width: Value.maxSlide,
        child: Scaffold(
          backgroundColor: const Color(0xFF31a950),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 62, bottom: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AssetsPath.walkingtreeWhite,
                      scale: 2,
                    ),
                    // const SizedBox(
                    //   width: Value.maxSlide * 0.05,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     animationController.forward();
                    //   },
                    //   child: Image.asset(
                    //     AssetsPath.menuIconWhite,
                    //     scale: 0.7,
                    //   ),
                    // ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  animationController.forward();
                },
                child: Center(
                    child: Text(
                  'Meet Our Team',
                  style: const Style().style30W,
                )),
              ),
              const Style().sizeBox50,
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Text(
                  'Managers & Team',
                  style: const Style().style30W,
                ),
              )),
              const Style().sizeBox50,
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(),
                    ),
                  );
                },
                child: Text(
                  'About Walkingtree',
                  style: const Style().style30W,
                ),
              )),
              const Style().sizeBox50,
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutApp(),
                    ),
                  );
                },
                child: Text(
                  'About App',
                  style: const Style().style30W,
                ),
              )),
            ],
          ),
        ),
      ),
    );
    var whiteScreen = SafeArea(
      child: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: GestureDetector(
                onTap: () {
                  animationController.reverse();
                },
                child: Image.asset(
                  AssetsPath.walkingtreeGreen,
                  scale: 2,
                ),
              ),
            ),
            const Center(
              child: Text(
                "MEET OUR TEAM",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF31a950,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Column(
              children: const [
                AlokSirSlide(),
                PradeepSirSlide(),
                ScottSeaboltSirSlide(),
                AmitaMamSlide(),
                AbhilashaMamSlide(),
              ],
            ),
          ],
        ),
      ),
    );
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      child: SafeArea(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return Stack(
              children: [
                Transform.translate(
                  offset: Offset(Value.maxSlide * animationController.value, 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(-math.pi * animationController.value / 2),
                    alignment: Alignment.centerLeft,
                    child: greenScreen,
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                      Value.maxSlide * (animationController.value - 1), 0),
                  child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(
                            math.pi / 2 * (1 - animationController.value)),
                      alignment: Alignment.centerRight,
                      child: whiteScreen),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed &&
        details.globalPosition.dx < Value.minDragStartEdge;
    bool isDragCloseFromRight = animationController.isCompleted &&
        details.globalPosition.dx > Value.maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / Value.maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }

  void close() => animationController.reverse();

  void open() => animationController.forward();
}
