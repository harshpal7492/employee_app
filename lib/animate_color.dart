// import 'package:employee_app/employee_detail.dart';
// import 'package:flutter/material.dart';

// class AnimateColor extends StatefulWidget {
//   const AnimateColor({Key? key}) : super(key: key);
//   static const String routeName = '/basics/chaining_tweens';

//   @override
//   _AnimateColorState createState() => _AnimateColorState();
// }

// class _AnimateColorState extends State<AnimateColor>
//     with SingleTickerProviderStateMixin {
//   static const Duration duration = Duration(milliseconds: 500);
//   late final AnimationController controller;
//   late final Animation<Color?> animation;

//   static final colors = [
//     Colors.green,
//     Colors.orange,
//   ];
//   // static final Designation = [
//   //   'Sr Manager',
//   //   'Asst Manager',
//   //   'Reporting Manager',
//   //   'Flutter Developer'
//   // ];

//   @override
//   void initState() {
//     super.initState();

//     final sequenceItems = <TweenSequenceItem<Color?>>[];

//     for (var i = 0; i < colors.length; i++) {
//       final beginColor = colors[i];
//       final endColor = colors[(i + 1) % colors.length];
//       final weight = 1 / colors.length;

//       sequenceItems.add(
//         TweenSequenceItem<Color?>(
//           tween: ColorTween(begin: beginColor, end: endColor),
//           weight: weight,
//         ),
//       );
//     }

//     controller = AnimationController(duration: duration, vsync: this);
//     animation = TweenSequence<Color?>(sequenceItems).animate(controller);
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedBuilder(
//         animation: animation,
//         builder: (context, child) {
//           return MaterialButton(
//             color: animation.value,
//             onPressed: () async {
//               await controller.forward();
//               controller.reset();
//             },
//             child: child,
//           );
//         },
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const EmployeeDetail(),
//               ),
//             );
//           },
//           child: Container(
//             height: 70,
//             width: 300,
//             child: const Center(
//               child: Text(
//                 "Sr Manager",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
