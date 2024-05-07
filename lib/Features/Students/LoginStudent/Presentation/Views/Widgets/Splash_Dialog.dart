import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/loginPageStudent.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashDialog extends StatefulWidget {
  const SplashDialog({super.key});

  @override
  State<SplashDialog> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidAnimation();
    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: KPrimeryColor2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              AspectRatio(
                  aspectRatio: 2.9,
                  child: Lottie.asset(
                      'assets/lottie/lottieflow-checkbox-04-20BF55-easey.json')),
              SizedBox(height: 35),
              Text(
                AppLocalizations.of(context)!.sucssLogin,
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Harmattan',
                    color: KPrimeryColor3),
              )
            ],
          ),
          height: MediaQuery.of(context).size.height * .4,
          width: MediaQuery.of(context).size.width * 25,
        ));
  }

  void initSlidAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    SlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 30), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(AppRouter.KHomeStudentPage);
    });
  }
}
