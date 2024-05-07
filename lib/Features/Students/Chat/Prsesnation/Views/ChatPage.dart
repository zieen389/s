import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/widgets/chatBubble.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/widgets/containerChat.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChatViwe extends StatelessWidget {
  const ChatViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimeryColor2,
      appBar: AppBar(
        title: Center(
            child: Text(
          AppLocalizations.of(context)!.chat,
          style: TextStyle(
              fontFamily: KFont2,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: KPrimeryColor2),
        )),
        backgroundColor: KPrimeryColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Container_chat(
          //   image: AssetImage('assets/images/teacher.jpg'),
          //   color: Color(0xFFFEC163),
          //   text: 'المشرف',
          //   ontap: () {
          //     GoRouter.of(context).push(AppRouter.KchatParents);
          //   },
          // ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * .025,
          // ),
          // Divider(
          //   thickness: 1,
          //   endIndent: 60,
          // ),
          Container_chat(
            image: AssetImage('assets/images/ad.png'),
            color: Color(0xFFF98222),
            text: AppLocalizations.of(context)!.adv,
            ontap: () {
              GoRouter.of(context).push(AppRouter.KAdchat);
            },
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * .025,
          // ),
          Divider(
            thickness: 1,
            endIndent: 60,
          )
        ],
      ),
    );
  }
}
