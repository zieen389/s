import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myshop/main.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({
    Key? key,
  }) : super(key: key);

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
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
          'اللغة',
          style: TextStyle(
              color: KPrimeryColor1,
              fontWeight: FontWeight.bold,
              fontFamily: KFont2,
              fontSize: 24,
              letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'قم باختيار اللغة المناسبة لك',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: KFont2,
                  color: KPrimeryColor1,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            textWidget(
              lang: 'العربية',
              ontap: () {},
              image: 'assets/images/syria.png',
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.7,
            ),
            SizedBox(
              height: 12,
            ),
            textWidget(
              lang: 'الإنكليزية',
              ontap: () {},
              image: 'assets/images/britain.png',
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}

class textWidget extends StatelessWidget {
  textWidget({required this.lang, required this.ontap, required this.image});
  String? lang;
  VoidCallback? ontap;
  String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '$lang',
            style: TextStyle(
                fontSize: 25,
                fontFamily: KFont2,
                color: Colors.black45,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
          Image.asset(
            '$image',
            height: MediaQuery.of(context).size.height * .04,
          )
        ],
      ),
    );
  }
}
