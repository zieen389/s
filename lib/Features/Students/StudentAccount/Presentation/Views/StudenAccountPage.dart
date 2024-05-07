import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myshop/Features/DialogLogin/Presentation/Widget/CircleImage.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/ContainerLog.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/Container_widget.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/ProfileAccount_Boy.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/main.dart';

class StudentAccountView extends StatelessWidget {
  const StudentAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        Color(0xFFE45010),
        Color(0xFFF98222),
        Color(0xFFFFA726)
      ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'تيم لاجين',
                style: TextStyle(
                    fontFamily: KFont2,
                    fontSize: 32,
                    color: KPrimeryColor2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 18,
              ),
              CircleImageCustom(
                  image: AssetImage('assets/images/studentAccount.jpg'),
                  ontap: () {}),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(child: ContainerWidget()),
        ],
      ),
    );
  }
}
