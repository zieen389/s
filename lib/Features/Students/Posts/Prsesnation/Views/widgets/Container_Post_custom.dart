import 'package:flutter/material.dart';
import 'package:myshop/Features/Students/Posts/Prsesnation/Views/widgets/Image_Post_custom.dart';
import 'package:myshop/Features/Students/Posts/Prsesnation/Views/widgets/Like_botton_custom.dart';
import 'package:myshop/constant.dart';

class ContainerPost extends StatelessWidget {
  ContainerPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 6,
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(8, 3))
          ],
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: KPrimeryColor3, width: 2),
          color: KPrimeryColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ImagePost(), LikedButtonCustom()],
        ),
        // height: MediaQuery.of(context).size.height * .41,
        // width: double.infinity,
      ),
    );
  }
}
