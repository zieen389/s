import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

class Security_View extends StatelessWidget {
  const Security_View({super.key});

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
          'الأمان',
          style: TextStyle(
              color: KPrimeryColor1,
              fontWeight: FontWeight.bold,
              fontFamily: KFont2,
              fontSize: 24,
              letterSpacing: 1),
        ),
      ),
      body: Column(
        children: [
          infoCustom(
            text: 'البريد اللإلكتروني',
            pass_em: 'taim@gmail.com',
            onpress: () {
              GoRouter.of(context).push(AppRouter.KemailChange);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          infoCustom(
            text: 'كلمة السر',
            pass_em: 'taim_la',
            onpress: () {
              GoRouter.of(context).push(AppRouter.Kpasschnage);
            },
          ),
        ],
      ),
    );
  }
}

class infoCustom extends StatelessWidget {
  infoCustom(
      {required this.text, required this.pass_em, required this.onpress});
  String? text;
  String? pass_em;
  VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .015,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            '$text',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: KPrimeryColor1,
                fontFamily: KFont2,
                fontSize: 18),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .002,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: onpress,
                  icon: Icon(
                    Icons.edit,
                    color: KPrimeryColor1,
                    size: 28,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18, right: 12),
                  child: Text(
                    '$pass_em',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(8, 3))
                  ],
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: Colors.grey.withOpacity(.5), width: 2),
                  color: KPrimeryColor2,
                ),
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width * .8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
