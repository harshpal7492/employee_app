import 'package:flutter/material.dart';

class AmitaMamSlide extends StatefulWidget {
  const AmitaMamSlide({Key? key}) : super(key: key);

  @override
  State<AmitaMamSlide> createState() => _AmitaMamSlideState();
}

class _AmitaMamSlideState extends State<AmitaMamSlide> {
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
                      'assets/Amita-mam.png',
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
                'Amita Suri',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Text(
                'Technology Evangelist',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                    'Amita comes with an experience of almost 2 decades and plays a key role in delivering programs and working with the training teams in Walkingtree. '),
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
