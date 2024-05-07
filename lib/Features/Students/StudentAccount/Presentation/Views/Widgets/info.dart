import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/pichart.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/picharthodor.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

class Info_student extends StatelessWidget {
  const Info_student({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KPrimeryColor2,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop(AppRouter.KStudentAccount);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: KPrimeryColor1,
              size: 28,
            ),
          ),
          backgroundColor: KPrimeryColor2,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'المعلومات المدرسية',
            style: TextStyle(
                color: KPrimeryColor1,
                fontWeight: FontWeight.bold,
                fontFamily: KFont2,
                fontSize: 24,
                letterSpacing: 1),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'تاريخ الميلاد',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    '9/4/2019',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont,
                        fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'الاسم',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    'تيم لاجين',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Divider(
            color: Colors.grey.shade900,
            indent: 50,
            endIndent: 50,
            thickness: .7,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'اسم الأم',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    'متيم مكي',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'اسم الأب',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    'إياد لاجين',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Divider(
            color: Colors.grey.shade900,
            indent: 50,
            endIndent: 50,
            thickness: .7,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'رقم الشعبة',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont,
                        fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'السنة الدراسية',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                  Text(
                    'الأول',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: KFont2,
                        fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .08,
          ),
          Row(
            children: [pichart(), picharthodor()],
          )
        ]));
  }
}
