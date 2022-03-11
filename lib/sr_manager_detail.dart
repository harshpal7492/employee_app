import 'package:flutter/material.dart';

class SrManagerDetail extends StatelessWidget {
  const SrManagerDetail({Key? key}) : super(key: key);

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
                            'assets/manish-sir.jpg',
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
                      'Manish Mohan Kaushik',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    const Text(
                      'Sr Manager',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    const Text(
                      '10+ Year Experience',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    const Text(
                      'Manish.kaushik@walkingtree.tech',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
          ),
        ),
      ),
    );
  }
}
