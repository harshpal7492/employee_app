//!  Home Screen meet out team Team

// SafeArea(
//       child: Scaffold(
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 35, bottom: 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Image.asset(
//                     AssetsPath.walkingtreeGreen,
//                     scale: 2.5,
//                   ),
//                   const SizedBox(
//                     width: Value.maxSlide * 0.05,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       animationController.forward();
//                     },
//                     child: Image.asset(
//                       AssetsPath.menuIconBlack,
//                       scale: 0.7,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Column(
//               children: const [
//                 AlokSirSlide(),
//                 PradeepSirSlide(),
//                 ScottSeaboltSirSlide(),
//                 AmitaMamSlide(),
//                 AbhilashaMamSlide(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),


// ! Drawer Sidebar

// SafeArea(
//                       child: Container(
//                         color: const Color(0xFF31a950),
//                         width: Value.maxSlide,
//                         child: Scaffold(
//                           backgroundColor: const Color(0xFF31a950),
//                           body: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 35, bottom: 200),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Image.asset(
//                                       AssetsPath.walkingtreeWhite,
//                                       scale: 2.5,
//                                     ),
//                                     const SizedBox(
//                                       width: Value.maxSlide * 0.05,
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         animationController.reverse();
//                                       },
//                                       child: Image.asset(
//                                         AssetsPath.menuIconWhite,
//                                         scale: 0.7,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Center(
//                                   child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => const Home(),
//                                     ),
//                                   );
//                                 },
//                                 child: Text(
//                                   'Home',
//                                   style: const Style().style30W,
//                                 ),
//                               )),
//                               const Style().sizeBox50,
//                               Center(
//                                   child: Text(
//                                 'Screen 2',
//                                 style: const Style().style30W,
//                               )),
//                               const Style().sizeBox50,
//                               Center(
//                                   child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => const AboutUs(),
//                                     ),
//                                   );
//                                 },
//                                 child: Text(
//                                   'AboutUs',
//                                   style: const Style().style30W,
//                                 ),
//                               )),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),


//! AnimatationController codde

// import 'package:employee_app/style.dart';
// import 'package:employee_app/value.dart';
// import 'package:flutter/material.dart';
// import 'package:employee_app/Slides/abhilasha_mam_slide.dart';
// import 'package:employee_app/Slides/alok_sir_slide.dart';
// import 'package:employee_app/Slides/amita_mam_slide.dart';
// import 'package:employee_app/Slides/pradeep_sir_slide.dart';
// import 'package:employee_app/Slides/scott_seabolt_sir_slide.dart';

// import 'about_us.dart';
// import 'assets_path.dart';
// import 'dart:math' as math;

// import 'home.dart';

// class TeamScreen extends StatefulWidget {
//   const TeamScreen({Key? key}) : super(key: key);

//   @override
//   State<TeamScreen> createState() => _TeamScreenState();
// }

// class _TeamScreenState extends State<TeamScreen> with SingleTickerProviderStateMixin {

//   late AnimationController animationController;
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
//                     child: 
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(Value.maxSlide * animationController.value, 0),
//                   child: Transform(
//                     transform: Matrix4.identity()
//                       ..setEntry(3, 2, 0.001)
//                       ..rotateY(-math.pi * animationController.value / 2),
//                     alignment: Alignment.centerLeft,
//                     child: 
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
//   }










