import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myshop/constant.dart';

class Examprog extends StatefulWidget {
  const Examprog({super.key});

  @override
  State<Examprog> createState() => _ExamprogState();
}

class _ExamprogState extends State<Examprog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: KPrimeryColor2,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            backgroundColor: KPrimeryColor1,
            title: Center(
                child: Text(
              "برنامج المذاكرات",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat.yMMMd().format(DateTime.now()),
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: KPrimeryColor1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  height: 120,
                  width: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: KPrimeryColor1,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(8, 3))
                  ],
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: KPrimeryColor1, width: 2),
                  color: KPrimeryColor2,
                ),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .95,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(8, 3))
                  ],
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: KPrimeryColor1, width: 2),
                  color: KPrimeryColor2,
                ),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .95,
              )
            ],
          )),
    );
  }
}
