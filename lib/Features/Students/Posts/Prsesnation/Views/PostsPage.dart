import 'package:flutter/material.dart';
import 'package:myshop/Features/Students/Posts/Prsesnation/Views/widgets/Container_Post_custom.dart';
import 'package:myshop/constant.dart';

class PostsPageView extends StatelessWidget {
  PostsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimeryColor2,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: KPrimeryColor2,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Image.asset(
            'assets/images/schoolify.png',
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .6,
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.2,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return ContainerPost();
          }),
    );
  }
}
