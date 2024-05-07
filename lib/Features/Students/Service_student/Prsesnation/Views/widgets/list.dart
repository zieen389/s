import 'package:flutter/material.dart';

class Page {
  // Define a Page model if needed (replace with your actual properties)
  final String title;
  final String routeName; // Assuming you have routes defined

  const Page({required this.title, required this.routeName});
}

List<Page> pages = [
  // Create a well-defined pages list
  Page(title: 'Marks', routeName: '/markess'),
  Page(title: 'Inschool', routeName: '/inschool'),
  Page(title: 'Note', routeName: '/note'),
  Page(
      title: 'Exam Program',
      routeName: '/examprog'), // Adjust titles and routes as needed
  Page(title: 'Week Program', routeName: '/weekprg'),
  Page(title: 'Lesson', routeName: '/lesson'),
];
List catname = [
  "العلامات",
  "الحضور",
  "الملاحظات",
  "برنامج المذاكرات",
  "برنامج الأسبوع",
  "دروسي"
];
List<Color> catcolors = [
  Color(0xffffcf2f),
  Color(0xff6fe08d),
  Color(0xff61bdfd),
  Color(0xfffc7f7f),
  Color(0xffcb84fb),
  Color(0xff78e667),
];

List<Icon> caticon = [
  Icon(
    Icons.bar_chart_outlined,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.boy_outlined,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.note,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.view_week,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.list_alt_rounded,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.auto_stories_sharp,
    color: Colors.white,
    size: 30,
  ),
];
List<String> itemlist = [
  "الأول",
  "الثاني",
  "الثالث",
  "الرابع",
  "الخامس",
  "السادس",
];
//  Page markss() {
//   // ...
//   return markss();
// }
// Page Inschool() {
//   // ...
//   return Inschool();
// }
// Page Note() {
//   // ...
//   return Note();
// }
// Page Examprog() {
//   // ...
//   return Examprog();
// }
// Page Weekprog() {
//   // ...
//   return Weekprog();
// }
// Page Lesson() {
//   // ...
//   return Lesson();
// }


  
