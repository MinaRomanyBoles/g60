import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  const Counter({super.key, required this.counter});
  final int counter;
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int counter;
  @override
  void initState() {
    super.initState();
    counter = widget.counter;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              setState(() {
                --counter;
              });
            }, icon: Icon(Icons.remove)),

            Text('$counter',style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),

            IconButton(onPressed: (){
              setState(() {
                ++counter;
              });
            }, icon: Icon(Icons.add)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.of(context).pop(counter);
        },
        label: Text('Save'),
        icon: Icon(Icons.save,),
      ),
    );
  }
}

