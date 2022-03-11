// import 'package:employee_app/drawer_screen.dart';
// import 'package:employee_app/team_screen.dart';
// import 'package:employee_app/value.dart';
// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class AnimatationController extends StatefulWidget {
//   const AnimatationController({Key? key}) : super(key: key);

//   @override
//   State<AnimatationController> createState() => AnimatationControllerState();
// }

// class AnimatationControllerState extends State<AnimatationController>
//     with SingleTickerProviderStateMixin {
//   static late AnimationController animationController;
//   bool _canBeDragged = false;

//   @override
//   void initState() {
//     animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 250),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onHorizontalDragStart: _onDragStart,
//       onHorizontalDragUpdate: _onDragUpdate,
//       onHorizontalDragEnd: _onDragEnd,
//       child: SafeArea(
//         child: AnimatedBuilder(
//           animation: animationController,
//           builder: (context, _) {
//             return Stack(
//               children: [
//                 Transform.translate(
//                   offset: Offset(
//                       Value.maxSlide * (animationController.value - 1), 0),
//                   child: Transform(
//                     transform: Matrix4.identity()
//                       ..setEntry(3, 2, 0.001)
//                       ..rotateY(math.pi / 2 * (1 - animationController.value)),
//                     alignment: Alignment.centerRight,
//                     child: const TeamScreen(),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(Value.maxSlide * animationController.value, 0),
//                   child: Transform(
//                     transform: Matrix4.identity()
//                       ..setEntry(3, 2, 0.001)
//                       ..rotateY(-math.pi * animationController.value / 2),
//                     alignment: Alignment.centerLeft,
//                     child: const DrawerScreen(),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   void _onDragStart(DragStartDetails details) {
//     bool isDragOpenFromLeft = animationController.isDismissed &&
//         details.globalPosition.dx < Value.minDragStartEdge;
//     bool isDragCloseFromRight = animationController.isCompleted &&
//         details.globalPosition.dx > Value.maxDragStartEdge;

//     _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
//   }

//   void _onDragUpdate(DragUpdateDetails details) {
//     if (_canBeDragged) {
//       double delta = details.primaryDelta! / Value.maxSlide;
//       animationController.value += delta;
//     }
//   }

//   void _onDragEnd(DragEndDetails details) {
//     if (animationController.isDismissed || animationController.isCompleted) {
//       return;
//     }
//     if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
//       double visualVelocity = details.velocity.pixelsPerSecond.dx /
//           MediaQuery.of(context).size.width;

//       animationController.fling(velocity: visualVelocity);
//     } else if (animationController.value < 0.5) {
//       close();
//     } else {
//       open();
//     }
//   }

//   void close() => animationController.reverse();

//   void open() => animationController.forward();
// }
