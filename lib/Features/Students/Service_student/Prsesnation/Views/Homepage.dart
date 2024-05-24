import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/examprog.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/inschool.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/list.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/marks.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/my_lesson.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/note.dart';
import 'package:myshop/Features/Students/Service_student/Prsesnation/Views/widgets/weekprog.dart';
import 'package:myshop/constant.dart';
import '../../../StudentAccount/Presentation/Views/Widgets/add_person.dart';
import 'package:myshop/core/Utils/app_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  static const routes = {
  0: '/markess',
  1: '/inschool',
  2: '/note',
  3: '/examprog',
  4: '/weekprg',
  5: '/lesson',
};
  
  Widget build(BuildContext context) {
    return Scaffold(
    // return MaterialApp(
    //   routes: {
    //     // Other routes...
    //     '/note': (context) => Note(),
    //     '/inschool': (context) => Inschool(),
    //     '/markess': (context) => markss(),
    //     '/lesson': (context) => Lesson(),
    //     '/examprog': (context) => Examprog(),
    //     '/weekprg': (context) => Weekprog(),
    //     // Replace NotePage with your actual page widget
    //   },
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
        // appBar: AppBar(
        //   // leading: Builder(
        //   //     builder: (context) => IconButton(
        //   //         onPressed: () {
        //   //           Scaffold.of(context).openDrawer();
        //   //         },
        //   //         icon: Icon(
        //   //           Icons.menu,
        //   //           color: KPrimeryColor1,
        //   //         ))),
        //   backgroundColor: KPrimeryColor3,
        //   title: Center(
        //     child: Text(
        //       "الخدمات",
        //       style: TextStyle(
        //         fontSize: 35,
        //         color: KPrimeryColor1,
        //         fontFamily: 'Amiri',
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        // drawer: Drawer(
        //   child: Container(
        //     padding: EdgeInsets.only(top: 30),
        //     color: Colors.white,
        //     child: ListView(
        //       children: [
        //         UserAccountsDrawerHeader(
        //           accountName: Text("Hi,Student"),
        //           accountEmail: Text("School.com"),
        //           currentAccountPicture: CircleAvatar(
        //             child: ClipOval(
        //                 child: Image.asset(
        //               "assets/images/p6.jpg",
        //               width: 90,
        //               height: 90,
        //               fit: BoxFit.cover,
        //             )),
        //           ),
        //           decoration: BoxDecoration(color: KPrimeryColor1),
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.language_rounded,
        //             color: KPrimeryColor3,
        //           ),
        //           title: Text(
        //             "اللغة",
        //             style: TextStyle(color: KPrimeryColor1, fontSize: 20),
        //           ),
        //           onTap: () {},
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.add_circle_sharp,
        //             color: KPrimeryColor3,
        //           ),
        //           title: Text(
        //             "أضف ابن",
        //             style: TextStyle(color: KPrimeryColor1, fontSize: 20),
        //           ),
        //           onTap: () {
        //             Navigator.of(context)
        //                 .push(MaterialPageRoute(builder: (context) {
        //               return add();
        //             }));
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.output_outlined,
        //             color: KPrimeryColor3,
        //           ),
        //           title: Text(
        //             "تسجيل الخروج",
        //             style: TextStyle(color: KPrimeryColor1, fontSize: 20),
        //           ),
        //           onTap: () {},
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        body: Stack(
          children: [
            Container(
              child: const Image(
                image: AssetImage(
                  'assets/images/p1.jpg',
                ),
                fit: BoxFit.fill,
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text("الخدمات",style: TextStyle(fontSize: 50, fontFamily: KFont2,color: Color.fromARGB(255, 158, 1, 132)),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 15, right: 15),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: catname.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.1),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                               GoRouter.of(context).push(routes[index].toString());
                                  // Navigator.pushNamed(
                                  //     context, pages[index].routeName);
                                },
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: catcolors[index],
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: caticon[index],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                catname[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    // fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        

        //  bottomNavigationBar:BottomNavigationBar(
        //   currentIndex: 1,
        //   iconSize: 32,
        //   selectedItemColor: KPrimeryColor1,
        //   selectedFontSize: 18,
        //   unselectedItemColor: Colors.grey,
        //   items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "الرئيسية"),
        //   BottomNavigationBarItem(icon: Icon(Icons.edit_square),label: "الخدمات"),
        //   BottomNavigationBarItem(icon: Icon(Icons.person),label: "حسابي"),
        //  ]),
      
    ));
  }
}
