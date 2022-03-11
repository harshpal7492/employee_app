import 'dart:convert';

import 'package:employee_app/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmployeeDetail extends StatefulWidget {
  const EmployeeDetail({Key? key, employee}) : super(key: key);

  @override
  State<EmployeeDetail> createState() => _EmployeeDetailState();
}

class _EmployeeDetailState extends State<EmployeeDetail> {
  List _items = [];

  // Fetch content from the json file
  Future _readJson() async {
    final String response = await rootBundle.loadString('assets/db.json');
    final data = await json.decode(response);
    return setState(() {
      _items = data["details"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _readJson();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              const Text(
                "Flutter Developers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF31a950)),
              ),
              const Style().sizeBox50,
              // Display the data loaded from sample.json
              _items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        // child: Image.asset(
                                        //   'assets/AlokSir.png',
                                        //   width: 100,
                                        //   height: 100,
                                        //   fit: BoxFit.fill,
                                        // ),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["name"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["Designation"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["EmpId"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["doj"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["email"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                  Text(
                                    _items[index]["contact"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: double.infinity,
                                  ),
                                ],
                                // [
                                //   Text(
                                //     _items[index]["name"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["email"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["doj"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["Designation"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["EmpId"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["contact"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                //   Text(
                                //     _items[index]["experience"],
                                //     style: const TextStyle(color: Colors.white),
                                //   ),
                                // ],
                              ),
                              tileColor: const Color(0xFF31a950),
                            ),
                          );
                        },
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
