import 'package:flutter/material.dart';

class ScottSeaboltSirSlide extends StatefulWidget {
  const ScottSeaboltSirSlide({Key? key}) : super(key: key);

  @override
  State<ScottSeaboltSirSlide> createState() => _ScottSeaboltSirSlideState();
}

class _ScottSeaboltSirSlideState extends State<ScottSeaboltSirSlide> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 246, 246),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/Scott-Seabolt-Profile.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  )),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Scott Seabolt',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Chief Technology Officer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                    'Scott Seabolt, our Chief Technology Officer has over 30 years of experience in engineering enterprise computing systems. He has worked in all phases of the software development lifecycle. '),
              ),
              const SizedBox(
                height: 30,
                width: double.infinity,
              ),
              const Text('More.',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
