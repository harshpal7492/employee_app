// ignore_for_file: prefer_const_constructors

// import 'package:employee_app/employee_detail.dart';
// import 'package:employee_app/style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: PositionListView(),
//     );
//   }
// }

// class Welcome {
//   Welcome({
//     required this.id,
//     required this.position,
//   });

//   int id;
//   String position;

//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         id: json["id"],
//         position: json["position"],
//       );
// }

// Future<List<Welcome>> fetchPosition() async {
// const String apiURL = 'http://localhost:8080/position';

// var response = await http.get(Uri.parse(apiURL));
//   final String response = await rootBundle.loadString('assets/db.json');
//   final data = await json.decode(response);
//   setState((){
//     _items = data[]
//   })

//   if (response.statusCode == 200) {
//     List jsonResponse = json.decode(response.body);
//     return jsonResponse.map((position) => Welcome.fromJson(position)).toList();
//   } else {
//     throw Exception('Failed to load jobs from API');
//   }
// }

// class PositionListView extends StatelessWidget {
//   const PositionListView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ListView _positionListView(data) {
//       return ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return _tile(data[index].position);
//           });
//     }

//     return FutureBuilder<List<Welcome>>(
//       future: fetchPosition(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           List<Welcome>? data = snapshot.data;
//           return _positionListView(data);
//         } else if (snapshot.hasError) {
//           return Text("${snapshot.error}");
//         }
//         return CircularProgressIndicator();
//       },
//     );
//   }
// }

// ListTile _tile(
//   String position,
// ) =>
//     ListTile(
//       title: Text(position,
//           style: const TextStyle(
//               fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black)),
//     );

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [
//         Style().sizeBox30,
//         Image.asset('assets/walkingtreeWhiteBg.jpg'),
//         Style().sizeBox50,
//         Center(
//           child: Text(
//             'Employee App',
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF31a950),
//             ),
//           ),
//         ),
//         Style().sizeBox50,
//         GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const EmployeeDetail(),
//                 ),
//               );
//             },
//             child: _tile('hello')),
//       ],
//     ));
//   }
// }

import 'package:employee_app/reporting_manager_detail.dart';
import 'package:employee_app/style.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'asst_manager_detail.dart';
import 'employee_detail.dart';
import 'sr_manager_detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List _items = [];

  // Fetch content from the json file
  Future readJson() async {
    final String response = await rootBundle.loadString('assets/db.json');
    final data = await json.decode(response);
    return setState(() {
      _items = data["items"];
    });
  }

  @override
  void initState() {
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text('Managers & Teams',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: const Color(0xFF31a950))),
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
                              contentPadding: const EdgeInsets.all(10),
                              title: Center(
                                child: GestureDetector(
                                  onTap: () => {
                                    if (_items[index]["position"] ==
                                        "Sr Manager")
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SrManagerDetail(),
                                          ),
                                        ),
                                      }
                                    else if (_items[index]["position"] ==
                                        "Asst Manager")
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const AsstManagerDetail(),
                                          ),
                                        ),
                                      }
                                    else if (_items[index]["position"] ==
                                        "Reporting Manager")
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ReportingManagerDetail(),
                                          ),
                                        ),
                                      }
                                    else if (_items[index]["position"] ==
                                        "Flutter Developers")
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EmployeeDetail(),
                                          ),
                                        ),
                                      }
                                  },
                                  child: Text(
                                    _items[index]["name"],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
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
