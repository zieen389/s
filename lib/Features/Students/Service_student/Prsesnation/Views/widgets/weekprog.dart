import 'package:flutter/material.dart';
import 'package:myshop/constant.dart';

class Weekprog extends StatefulWidget {
  const Weekprog({super.key});

  @override
  State<Weekprog> createState() => _WeekprogState();
}

class _WeekprogState extends State<Weekprog> {
  final Color col1 = Color.fromARGB(255, 248, 233, 224);
  final Color KPressedColor = KPrimeryColor1;

  int selectedDay = 4; // 0 - الأحد، 1 - الاثنين، 2 - الثلاثاء، 3 - الأربعاء

  Color getButtonColor(int day) {
    if (day == selectedDay) {
      return KPressedColor;
    } else {
      return col1;
    }
  }

  bool isPressed = false;

  var currentindex = 0;
  void buttonclicked() {
    setState(() {
      currentindex = currentindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      " لعربي",
      "اانسةي",
    ];
    return Scaffold(
      
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            backgroundColor: KPrimeryColor1,
            title: Center(
                child: Text(
              "برنامج الأسبوع",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(40, 70), backgroundColor: getButtonColor(0),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedDay = 0;
                            });
                          },
                          child: Text(
                            "الخميس",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(40, 70), backgroundColor: getButtonColor(1),
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: KPrimeryColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedDay = 1;
                            });
                          },
                          child: Text(
                            "الأربعاء",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(40, 70), backgroundColor: getButtonColor(2),
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: KPrimeryColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedDay = 2;
                            });
                          },
                          child: Text(
                            "الثلاثاء",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(40, 70), backgroundColor: getButtonColor(3),
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: KPrimeryColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            buttonclicked();
                            setState(() {
                              selectedDay = 3;
                            });
                          },
                          child: Text(
                            "الاثنين",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(40, 70), backgroundColor: getButtonColor(4),
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: KPrimeryColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedDay = 4;
                            });
                          },
                          child: Text(
                            "الأحد",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 213, 150),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "اللغة الانكليزية",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 8:00 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                            // width: 200,
                            //  height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "الفترة الأولى",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(246, 252, 127, 55),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "اللغة العربية",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 8:45 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "الفترة الثانية",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 213, 150),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "الديانة",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 9:30 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "الفترة الثالثة",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(246, 252, 127, 55),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "العلوم",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 9:45 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "الفترة الرابعة",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 213, 150),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "اللغة الانكليزية",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 10:30 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "الفترة الخامسة",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(246, 252, 127, 55),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "التربية الرياضية",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text("ص 11:15 ")
                                ],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "الفترة السادسة",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              color: KPrimeryColor2,
                              width: 120,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
    ;
  }
}















         
//
//
//
//
// Stack(
//           children: [
//             Container(
//               child: const Image(
//                   image: AssetImage('assets/images/p8.jpg', ),
//                   fit: BoxFit.fill,
//                ),
//               width: double.infinity,
//               height: double.infinity,
//       ),
//       Center(
//         child: DataTable(
//         columns: const [
//           DataColumn(label: Text('اليوم')),
//           DataColumn(label: Text('المادة')),
//           DataColumn(label: Text('الوقت')),
//         ],
//         rows: _programItems.map((item) {
//           return DataRow(cells: [
//         DataCell(Text(item.day)),
//         DataCell(Text(item.subject)),
//         DataCell(Text(item.time)),
//           ]);
//         }).toList(),
//       ),
//       ),
//       ],)
  
// class ProgramItem {
//   final String day;
//   final String subject;
//   final String time;

//   ProgramItem({required this.day, required this.subject, required this.time});
// }