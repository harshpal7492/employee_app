import 'package:flutter/material.dart';

class ReportingManagerDetail extends StatelessWidget {
  const ReportingManagerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
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
                            'assets/sanjay-sir.jpg',
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
                      'Sanjay Samuel Krishnan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    const Text(
                      'Reporting Manager',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    const Text(
                      '20+ years Experience',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    const Text(
                      'sanjay.krishnan@walkingtree.tech',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    const Text('More.',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
