import 'package:flutter/material.dart';
import 'package:myshop/constant.dart';

class Container_chat extends StatelessWidget {
  Container_chat(
      {this.ontap,
      required this.text,
      required this.color,
      required this.image});
  VoidCallback? ontap;
  Color? color;
  String? text;
  AssetImage? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * 1,
        //color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.only(right: 12, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    '$text',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontFamily: KFont2,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'مرحبا',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black38,
                        fontFamily: KFont2,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(
                width: 16,
              ),
              CircleAvatar(
                backgroundColor: color,
                // Color(0xFFFEC163),
                radius: 28,
                child: CircleAvatar(
                  backgroundColor: KPrimeryColor2,
                  radius: 27,
                  backgroundImage: image,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
