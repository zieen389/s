import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/button_Widget.dart';
import 'package:myshop/Features/Students/forget_Password/Prsesnation/Views/widgets/verification_code.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

class PassChange extends StatefulWidget {
  const PassChange({super.key});

  @override
  State<PassChange> createState() => _PassChangeState();
}

class _PassChangeState extends State<PassChange> {
  final _keyform = GlobalKey<FormState>();
  String? password;
  String? confirmPassword;
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
              height: MediaQuery.of(context).size.height * .08,
            ),
            Text(
              'هل تريد تغيير كلمة السر لهذا الحساب؟  ',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: KFont2,
                  color: KPrimeryColor1,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 12, top: 18),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .07,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء تعبئة هذا الحقل';
                      }
                      password = value;
                    },
                    style: TextStyle(
                        fontSize: 22, fontFamily: KFont, color: Colors.black54),
                    cursorColor: Colors.grey,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.password),
                        suffixIconColor: Colors.grey,
                        hintText: 'كلمة السر الجديدة',
                        hintStyle: const TextStyle(
                            fontSize: 20,
                            fontFamily: KFont2,
                            color: Colors.black54),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: KPrimeryColor1, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 1.2),
                            borderRadius: BorderRadius.circular(12)),
                        errorStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: KFont2,
                        ))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 12, top: 18),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .07,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء تعبئة هذا الحقل';
                      }
                      confirmPassword = value;
                      if (password != confirmPassword) {
                        return 'لايوجد تطابق';
                      }
                    },
                    style: TextStyle(
                        fontSize: 22, fontFamily: KFont, color: Colors.black54),
                    cursorColor: Colors.grey,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password),
                      suffixIconColor: Colors.grey,
                      hintText: 'قم بإعادة كتابة كلمة السر الجديدة',
                      hintStyle: const TextStyle(
                          fontSize: 20,
                          fontFamily: KFont2,
                          color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: KPrimeryColor1, width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.2),
                          borderRadius: BorderRadius.circular(12)),
                      errorStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: KFont2,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Center(
              child: CustomButon(
                onTap: () {
                  if (_keyform.currentState!.validate()) {
                    GoRouter.of(context).pop(context);
                  }
                },
                text: 'تأكيد',
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
