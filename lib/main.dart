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

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.teal),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter State $counter'), centerTitle: true,),
      body: Center(
        child: Counter(),
      ),
    );
  }
}
int counter = 0;

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$counter', style: TextStyle(fontSize: 64,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: ()=> setState(() => --counter),
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: ()=> setState(() => counter = 0),
              child: Icon(Icons.refresh),
            ),
            FloatingActionButton(
              onPressed: ()=> setState(() => ++counter),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}

