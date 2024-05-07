import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:myshop/Features/DialogLogin/Presentation/dialog.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/loginPageStudent.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
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
    return Scaffold(
        backgroundColor: KPrimeryColor2,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Lottie.asset(
                'assets/lottie/SplashLogo.json',
                animate: true,
              ),
            ),
            AnimatedBuilder(
                animation: SlidingAnimation,
                builder: (context, _) {
                  return SlideTransition(
                    position: SlidingAnimation,
                    child: AspectRatio(
                        aspectRatio: 1.6,
                        child: Image.asset('assets/images/schoolify.png')),
                  );
                })
          ],
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
    Future.delayed(const Duration(seconds: 8), () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogCustom();
          });
    });
  }
}
//  GoRouter.of(context).push(AppRouter.KLoginPage);