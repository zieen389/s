import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myshop/constant.dart';

class markss extends StatefulWidget {
  const markss({super.key});

  @override
  State<markss> createState() => _markssState();
}

class _markssState extends State<markss> {
  @override
  final List<StudentMark> _marks = [
    StudentMark(
      date: DateTime.now(),
      subject: 'الرياضيات',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'العلوم',
      grade: 90,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'اللغة العربية',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'اللغة الانكليزية',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'اللغة الفرنسية',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'الديانة',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'المعلوماتية',
      grade: 20,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'التربية الفنية',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'التربية الموسيقية',
      grade: 10,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'الرياضة',
      grade: 85,
    ),
    StudentMark(
      date: DateTime.now(),
      subject: 'الاجتماعيات',
      grade: 85,
    ),
  ];
  Color _buildColor(int grade) {
    if (grade >= 30) {
      return KPrimeryColor3; // أخضر للعلامات 30 وما فوق
    } else {
      return Colors.red; // أحمر للعلامات أقل من 30
    }
  }

  Color _buildColor1(double total) {
    if (total >= 30) {
      return KPrimeryColor3; // أخضر للمجموع 30 وما فوق
    } else {
      return Colors.red; // أحمر للمجموع أقل من 30
    }
  }

  double get totalMarks =>
      _marks.fold(0.0, (sum, mark) => sum + mark.grade) / 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: KPrimeryColor1,
          title: Center(
              child: Text(
            "العلامات",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: KPrimeryColor2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: " اسم الطالب " ":",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: KPrimeryColor1),
                        ),
                        TextSpan(
                          text: "   ",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextSpan(
                          text: "أحمد محمد",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 59, 59, 59),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: " السنة الدراسية  " ":",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: KPrimeryColor1),
                        ),
                        TextSpan(
                          text: "   ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "الثاني ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 59, 59, 59),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                DataTable(
                  columns: const [
                    DataColumn(
                        label: Text(
                      'التاريخ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: KPrimeryColor1),
                    )),
                    DataColumn(
                        label: Text('الدرجة',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: KPrimeryColor1))),
                    DataColumn(
                        label: Text('المادة',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: KPrimeryColor1))),
                  ],
                  rows: _marks.map((mark) {
                    final formattedDate =
                        DateFormat('y-MM-dd').format(mark.date);
                    return DataRow(cells: [
                      DataCell(Text(formattedDate)),
                      DataCell(
                        Text(
                          mark.grade.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: _buildColor(mark.grade)),
                        ),
                      ),
                      DataCell(Text(
                        mark.subject,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                    ]);
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "المجموع : ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: KPrimeryColor1),
                        ),
                        TextSpan(
                          text: "   ",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextSpan(
                          text: "$totalMarks",
                          style: TextStyle(
                              fontSize: 20, color: _buildColor1(totalMarks)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StudentMark {
  final DateTime date;
  final int grade;

  final String subject;

  StudentMark({
    required this.date,
    required this.grade,
    required this.subject,
  });
}
