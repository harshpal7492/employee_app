import 'package:flutter/material.dart';

class AbhilashaMamSlide extends StatefulWidget {
  const AbhilashaMamSlide({Key? key}) : super(key: key);

  @override
  State<AbhilashaMamSlide> createState() => _AbhilashaMamSlideState();
}

class _AbhilashaMamSlideState extends State<AbhilashaMamSlide> {
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
                      'assets/Abhilasha-mam.png',
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
                'Abhilasha Sinha',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Solutions Architect',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                    'An author, speaker, and architect with a total experience of over 17 years, Abhilasha’s core strength is in designing and building complex enterprise web and mobile applications using React, Angular, and Flutter.'),
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
