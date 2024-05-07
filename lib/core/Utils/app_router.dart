import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/widgets/Ad_chatST.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/widgets/chat.dart';
import 'package:myshop/Features/Students/HomeStudent/Presentation/Views/HomeStudentPage.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/Widgets/Splash_Dialog.dart';
import 'package:myshop/Features/Students/LoginStudent/Presentation/Views/loginPageStudent.dart';
import 'package:myshop/Features/Splash/Presentation/Views/SplashPage.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/note.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/weekprog.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/StudenAccountPage.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/Email_change.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/Security.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/add_person.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/info.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/langauge.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/pass_change.dart';
import 'package:myshop/Features/Students/forget_Password/Prsesnation/Views/forget_passwordPage.dart';
import 'package:myshop/Features/Students/forget_Password/Prsesnation/Views/widgets/Code_Page.dart';

abstract class AppRouter {
  static const KSplashPage = '/SplashView';
  static const KStudentLoginPage = '/StudentloginView';
  static const KHomeStudentPage = '/Homeview';
  static const KStudentAccount = '/StudentAccountView';
  static const KsplashDialog = '/SplashDialog';
  static const kForgetPassword = '/Forget_passwordView';
  static const KCodeForgetPass = '/Code_page';
  static const KchatParents = '/ChatParents';
  static const KAdchat = '/AdChat';
  static const kWeekprog = '/weekprg';
  static const KSecurityview = '/Security_View';
  static const KemailChange = '/EmailChange';
  static const KchangeCode = '/Code_page_change';
  static const Kpasschnage = '/PassChange';
  static const KinfoStu = '/Info_student';
  static const Kaddstudent = '/add';
  static const Klanguage = '/LanguageView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
        path: KStudentLoginPage,
        builder: (context, state) => const StudentloginView()),
    GoRoute(
        path: KHomeStudentPage,
        builder: (context, state) => const HomeStudentview()),
    GoRoute(
        path: KStudentAccount,
        builder: (context, state) => const StudentAccountView()),
    GoRoute(
      path: KsplashDialog,
      builder: (context, state) => const SplashDialog(),
    ),
    GoRoute(
      path: kForgetPassword,
      builder: (context, state) => Forget_passwordView(),
    ),
    GoRoute(
      path: KCodeForgetPass,
      builder: (context, state) => const Code_page(),
    ),
    GoRoute(
      path: KchatParents,
      builder: (context, state) => const ChatParents(),
    ),
    GoRoute(
      path: KAdchat,
      builder: (context, state) => const AdChat(),
    ),
    GoRoute(
      path: kWeekprog,
      builder: (context, state) => const Weekprog(),
    ),
    GoRoute(
      path: KSecurityview,
      builder: (context, state) => const Security_View(),
    ),
    GoRoute(
      path: KemailChange,
      builder: (context, state) => EmailChange(),
    ),
    GoRoute(
      path: KchangeCode,
      builder: (context, state) => const Code_page_change(),
    ),
    GoRoute(
      path: Kpasschnage,
      builder: (context, state) => const PassChange(),
    ),
    GoRoute(
      path: KinfoStu,
      builder: (context, state) => const Info_student(),
    ),
    GoRoute(
      path: Kaddstudent,
      builder: (context, state) => const add(),
    ),
    GoRoute(
      path: Klanguage,
      builder: (context, state) => const LanguageView(),
    ),
  ]);
}
