import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/ChatPage.dart';
import 'package:myshop/Features/Students/Posts/Prsesnation/Views/PostsPage.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/Homepage.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/StudenAccountPage.dart';
import 'package:myshop/constant.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BodyStudent extends StatefulWidget {
  const BodyStudent({super.key});

  @override
  State<BodyStudent> createState() => _BodyStudentState();
}

class _BodyStudentState extends State<BodyStudent> {
  static List<Widget> widgetOptions = [
    ChatViwe(),
    Home(),
    StudentAccountView(),
    PostsPageView(),
  ];
  int selectedindex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedindex),
      ),
      bottomNavigationBar: Container(
        color: KPrimeryColor2,
        child: Container(
          child: GNav(
            textStyle: TextStyle(
                fontFamily: KFont2,
                color: KPrimeryColor2,
                fontSize: 14,
                fontWeight: FontWeight.bold),
            tabBackgroundGradient:
                LinearGradient(begin: Alignment.topLeft, colors: [
              Color(0xFFEC5D31),
              Color(0xFFFEC163),
              //Color(0xFFF98222),
              //Color(0xFFF7AD3F),
            ]),
            backgroundColor: KPrimeryColor2,
            tabMargin: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
            onTabChange: (val) {
              setState(() {
                selectedindex = val;
              });
            },
            selectedIndex: selectedindex,
            hoverColor: KPrimeryColor2,
            haptic: true,
            // tabBorderRadius: 100,
            //tabActiveBorder: Border.all(color: Colors.black45, width: .8),
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 200),
            gap: 8,
            color: Colors.black45,
            activeColor: KPrimeryColor2,
            iconSize: 22,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
            tabs: [
              GButton(
                gap: 16,
                icon: FontAwesomeIcons.comments,
                text: AppLocalizations.of(context)!.chat,
              ),
              GButton(
                icon: Icons.contact_support,
                text: AppLocalizations.of(context)!.service,
              ),
              GButton(
                iconSize: 26,
                icon: LineIcons.user,
                text: AppLocalizations.of(context)!.myaccount,
              ),
              GButton(
                icon: FontAwesomeIcons.newspaper,
                text: AppLocalizations.of(context)!.post,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
