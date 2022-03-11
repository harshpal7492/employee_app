import 'package:flutter/material.dart';

class PradeepSirSlide extends StatefulWidget {
  const PradeepSirSlide({Key? key}) : super(key: key);

  @override
  State<PradeepSirSlide> createState() => _PradeepSirSlideState();
}

class _PradeepSirSlideState extends State<PradeepSirSlide> {
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
                      'assets/PradeepSir.png',
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
                'Pradeep Lavania',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Co-founder - Director',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                    'Pradeep is a thought leader with over two decades of experience in handling Global Business, Technology Delivery, Customer Service, Global Technology Market, Building Efficient Teams and Business, and Large-Scale Project Execution.'),
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
