import 'package:flutter/material.dart';
import 'package:myshop/Features/Students/Chat/Prsesnation/Views/widgets/chatBubble.dart';
import 'package:myshop/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdChat extends StatelessWidget {
  const AdChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KPrimeryColor2,
        appBar: AppBar(
          title: Center(
              child: Text(
            AppLocalizations.of(context)!.adv,
            style: TextStyle(
                fontFamily: KFont2,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: KPrimeryColor2),
          )),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: KPrimeryColor1,
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ChatBubbleFreind();
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4, bottom: 3),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .04,
              width: MediaQuery.of(context).size.width * .95,
              child: Container(
                color: KPrimeryColor2,
                child: Text(
                  AppLocalizations.of(context)!.apply,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: KFont2,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: KPrimeryColor1),
                ),
              ),
            ),
          )
        ]));
  }
}
