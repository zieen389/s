import 'package:flutter/material.dart';
import 'package:myshop/Features/Students/StudentAccount/Presentation/Views/Widgets/pichart.dart';
import 'package:myshop/constant.dart';

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .59,
        decoration: BoxDecoration(
            color: KPrimeryColor2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //     info2(),
              //     info1(),
              // ),
              // info3(),
              pichart()
            ],
          )
        ]));
  }
}
