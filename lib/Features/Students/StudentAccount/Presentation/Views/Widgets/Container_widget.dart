import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/constant.dart';
import 'package:myshop/core/Utils/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 59,
      decoration: BoxDecoration(
          color: KPrimeryColor2,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.only(right: 12, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: IconButton(
                      color: KPrimeryColor1,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.KSecurityview);
                      },
                      icon: Icon(Icons.arrow_back_ios_new)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    AppLocalizations.of(context)!.security,
                    style: TextStyle(
                        fontFamily: KFont2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: IconButton(
                      color: KPrimeryColor1,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.KinfoStu);
                      },
                      icon: Icon(Icons.arrow_back_ios_new)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    AppLocalizations.of(context)!.schoolinfo,
                    style: TextStyle(
                        fontFamily: KFont2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: IconButton(
                      color: KPrimeryColor1,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.Kaddstudent);
                      },
                      icon: Icon(Icons.add_circle_outline_outlined)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    AppLocalizations.of(context)!.addson,
                    style: TextStyle(
                        fontFamily: KFont2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: IconButton(
                      color: KPrimeryColor1,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.Klanguage);
                      },
                      icon: Icon(Icons.language)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    AppLocalizations.of(context)!.lang,
                    style: TextStyle(
                        fontFamily: KFont2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: IconButton(
                      color: KPrimeryColor1,
                      onPressed: () {},
                      icon: Icon(Icons.logout_outlined)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    AppLocalizations.of(context)!.logout,
                    style: TextStyle(
                        fontFamily: KFont2,
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
