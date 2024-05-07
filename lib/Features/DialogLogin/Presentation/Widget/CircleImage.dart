import 'package:flutter/material.dart';

import 'package:myshop/constant.dart';

// ignore: must_be_immutable
class CircleImageCustom extends StatelessWidget {
  CircleImageCustom({required this.image, required this.ontap});
  AssetImage? image;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // GoRouter.of(context).push(AppRouter.KLoginPage);
      onTap: ontap,
      child: CircleAvatar(
        radius: 39,
        backgroundColor: KPrimeryColor3,
        child: CircleAvatar(
          backgroundImage: image,
          radius: 37,
        ),
      ),
    );
  }
}
