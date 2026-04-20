// import 'package:untitled60/page1.dart';
// import 'package:untitled60/page2.dart';
// import 'package:untitled60/posts_page.dart';
//
// import 'package:flutter/material.dart';
//
// import 'calculator.dart';
// import 'home.dart';
// void main() async{
//
//   runApp(const MyApp());
//
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: false, primarySwatch: Colors.orange
//       ),
//       initialRoute: '/',
//       onGenerateRoute: (settings){
//         switch(settings.name){
//           case Page1.name:
//             if (settings.arguments is Color) {
//               return MaterialPageRoute(builder: (context) => Page1(color: settings.arguments as Color,));
//             }
//             else{
//
//             }
//           default:
//             return MaterialPageRoute(builder: (context) => Home());
//         }
//
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

void mina(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const MyText(txt: '',);
  }
}
git init

git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/MinaRomanyBoles/g60.git
git push -u origin main