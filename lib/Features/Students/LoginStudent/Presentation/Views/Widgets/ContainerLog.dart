import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/Splash_Dialog.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/button_Widget.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContainerCustomLog extends StatefulWidget {
  ContainerCustomLog({super.key});

  @override
  State<ContainerCustomLog> createState() => _ContainerCustomLogState();
}

class _ContainerCustomLogState extends State<ContainerCustomLog> {
  final _keyform = GlobalKey<FormState>();
  bool _isObscure = true;
  bool _isTextField1Valid = false;

  bool _isTextField2Valid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .564,
      decoration: BoxDecoration(
          color: KPrimeryColor2,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(75), topRight: Radius.circular(75))),
      child: SingleChildScrollView(
        child: Form(
          key: _keyform,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                  child: TextFormField(
                      textAlign: TextAlign.end,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!.errorusername;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person),
                        suffixIconColor: Colors.grey,
                        hintText: AppLocalizations.of(context)!.username,
                        hintStyle:
                            const TextStyle(fontSize: 22, fontFamily: KFont2),
                        errorStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: KFont2,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: KPrimeryColor1, width: 1),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                              color: KPrimeryColor1, width: 1.2),
                        ),
                      ))),
              Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!.errorpassword;
                        }
                      },
                      textAlign: TextAlign.end,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.password),
                        suffixIconColor: Colors.grey,
                        prefixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            )),
                        prefixIconColor: KPrimeryColor1,
                        hintText: AppLocalizations.of(context)!.password,
                        hintStyle:
                            const TextStyle(fontSize: 20, fontFamily: KFont2),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: KPrimeryColor1,
                          ),
                        ),
                        errorStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: KFont2,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                              color: KPrimeryColor1, width: 1.2),
                        ),
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CustomButon(
                  text: AppLocalizations.of(context)!.login,
                  fontSz: 24,
                  colorfont: Colors.white,
                  onTap: () {
                    if (_keyform.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SplashDialog();
                          });
                    }
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kForgetPassword);
                },
                child: Text(
                  AppLocalizations.of(context)!.forgetpass,
                  style: TextStyle(
                      fontFamily: KFont2, fontSize: 18, color: KPrimeryColor1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
