import 'package:flutter/material.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/ContainerLog.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/button_Widget.dart';
import 'package:myshop/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StudentloginView extends StatelessWidget {
  const StudentloginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        Color(0xFFE45010),
        Color(0xFFF98222),
        Color(0xFFFFA726),
      ])),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/Learning-cuate.png',
            height: MediaQuery.of(context).size.height * .295,
          ),
          Text(
            AppLocalizations.of(context)!.login,
            style: TextStyle(
                fontSize: 50, fontFamily: 'Harmattan', color: KPrimeryColor3),
          ),
          Expanded(child: ContainerCustomLog())
        ],
      ),
    ));
  }
}
