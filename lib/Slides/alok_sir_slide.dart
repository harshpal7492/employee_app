import 'package:flutter/material.dart';

class AlokSirSlide extends StatefulWidget {
  const AlokSirSlide({Key? key}) : super(key: key);

  @override
  State<AlokSirSlide> createState() => _AlokSirSlideState();
}

class _AlokSirSlideState extends State<AlokSirSlide> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 450,
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
                      'assets/AlokSir.png',
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
                'Alok Ranjan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Co-founder - MD',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                    'Alok is a visionary leader, a great listener, and an action-oriented person led by the belief that “a winning customer helps you win as well.”An IIT Delhi Alumni.'),
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
