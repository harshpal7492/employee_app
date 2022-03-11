// ignore_for_file: unnecessary_const

import 'package:employee_app/style.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              color: const Color(0xFF31a950),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 50),
                child: RichText(
                  text: const TextSpan(
                    text: 'About Walkingtree',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '\n\n',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const TextSpan(
                        text:
                            'WalkingTree Technologies is a product development enterprise with a prolific backend engineering team that serves customers across the globe. We deliver end-to-end products, processes, and solutions in the mobile application development and web technologies realms using the best practices in agile to ensure a “Great Experience” that is exemplary and unprecedented.',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Our accomplishments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  Image.asset('assets/company.png'),
                  const Style().sizeBox30,
                  const Text(
                    '50 BEST INDIAN FOUNDED COMPANIES.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Style().sizeBox50,
                  Image.asset('assets/world.png'),
                  const Style().sizeBox30,
                  const Text(
                    '#1 GLOBAL SENCHA SERVICES PROVIDER',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Style().sizeBox50,
                  Image.asset('assets/cloud.png'),
                  const Style().sizeBox30,
                  const Text(
                    '#1 GLOBAL CLOUD SOLUTION PROVIDER',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Style().sizeBox50,
                ],
              ),
            ),
            Image.asset(
              'assets/our-core-values.jpg',
              height: 400,
            ),
            Container(
              height: 150,
              color: const Color(0xFF181828),
              child: const Center(
                  child: Text('© 2022 WalkingTree Technologies',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
