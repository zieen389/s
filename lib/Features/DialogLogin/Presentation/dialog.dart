import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/DialogLogin/Presentation/Widget/CircleImage.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DialogCustom extends StatelessWidget {
  const DialogCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: KPrimeryColor2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          height: MediaQuery.of(context).size.height * .32,
          width: MediaQuery.of(context).size.width * 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 170, top: 15),
                child: Text(
                  AppLocalizations.of(context)!.logintype,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Harmattan',
                    color: KPrimeryColor1,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleImageCustom(
                  ontap: () {
                    GoRouter.of(context).push(AppRouter.KStudentLoginPage);
                  },
                  image: AssetImage('assets/images/Students.png'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                ),
                CircleImageCustom(
                  ontap: () {},
                  // ontap: () {
                  //   GoRouter.of(context).push(AppRouter.KParentsLoginpage);
                  // },
                  image: AssetImage('assets/images/family.png'),
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.student,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Harmattan',
                      color: KPrimeryColor1,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    AppLocalizations.of(context)!.parents,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Harmattan',
                      color: KPrimeryColor1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
