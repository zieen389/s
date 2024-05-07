import 'package:flutter/material.dart';

class Inschool extends StatefulWidget {
  const Inschool({super.key});

  @override
  State<Inschool> createState() => _InschoolState();
}

class _InschoolState extends State<Inschool> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.back_hand_sharp)) ,
        ),
        
      ),
    );
  }
}