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
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter State'), centerTitle: true,),
        body: Center(
          child: StatefulBuilder(
            builder: (context, reSetValue){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setCounter){
                      var i = setCounter;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$counter1', style: TextStyle(fontSize: 64,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setCounter(() => --counter1);
                                },
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: ()=> setCounter(() => counter1 = 0),
                                child: Icon(Icons.refresh),
                              ),
                              FloatingActionButton(
                                onPressed: ()=> setCounter(() => ++counter1),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setCounter){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$counter2', style: TextStyle(fontSize: 64,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setCounter(() => --counter2);
                                },
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: ()=> setCounter(() => counter2 = 0),
                                child: Icon(Icons.refresh),
                              ),
                              FloatingActionButton(
                                onPressed: ()=> setCounter(() => ++counter2),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      );
                    },

                  ),

                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.refresh),
        ),
      ),
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.teal),
    );
  }
}

int counter1 = 0 , counter2 = 0;

