import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/button_Widget.dart';
import 'package:myshop/Features/Students/forget_Password/Prsesnation/Views/widgets/verification_code.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

class EmailChange extends StatefulWidget {
  EmailChange({super.key});

  @override
  State<EmailChange> createState() => _EmailChangeState();
}

class _EmailChangeState extends State<EmailChange> {
  final _keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimeryColor2,
      body: Form(
        key: _keyform,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 56,
            ),
            Text(
              'هل تريد تغيير البريد الإلكتروني الخاص بك ؟  ',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: KFont2,
                  color: KPrimeryColor1,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'قم بإدخال البريد الالكتروني الجديد,ثم قم بوضع الرمز المؤلف من 5 أرقام الذي سنقوم بإرساله على البريد الجديد     ',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 18, fontFamily: KFont2, color: Colors.black54),
            ),
            SizedBox(
              height: 56,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextFormField(
                  textAlign: TextAlign.end,
                  // obscureText:obscureText!,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال البريد الإلكتروني';
                    } else if (value.isNotEmpty && !value.contains('@')) {
                      return '@ يجب ان يحتوي البريد الإلكتروني على';
                    }
                  },
                  // onChanged: onChanged,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontSize: 18,
                      fontFamily: KFont2,
                    ),
                    suffixIcon: Icon(Icons.email),
                    suffixIconColor: Colors.grey,
                    hintText: 'عنوان البريد الإلكتروني',
                    hintStyle: const TextStyle(
                        fontSize: 22,
                        fontFamily: KFont2,
                        color: Colors.black54),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: KPrimeryColor1, width: 1),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.2),
                        borderRadius: BorderRadius.circular(16)),
                  )),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: CustomButon(
                onTap: () {
                  if (_keyform.currentState!.validate()) {
                    GoRouter.of(context).push(AppRouter.KchangeCode);
                  }
                },
                text: 'المتابعة',
                fontSz: 24,
                colorfont: KPrimeryColor2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Code_page_change extends StatelessWidget {
  const Code_page_change({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimeryColor2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Lottie.asset('assets/lottie/Animation - 1711153910692.json')
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text(' : قم بوضع الرمز ',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: KFont2,
                    color: KPrimeryColor1,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(child: verificationcode()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: CustomButon(
                text: 'التأكيد',
                fontSz: 24,
                colorfont: KPrimeryColor2,
                onTap: () {
                  GoRouter.of(context).pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
