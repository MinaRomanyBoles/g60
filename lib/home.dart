import 'package:flutter/material.dart';
import 'package:untitled60/page1.dart';
import 'package:untitled60/page2.dart';
import 'package:untitled60/profile.dart';

import 'calculator.dart';
import 'case_study.dart';
import 'counter.dart';

class Home extends StatefulWidget {
  const Home({super.key,});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var price = TextEditingController();
  var rate = TextEditingController();
  var months = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: price,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Price',
                ),
              ),
              SizedBox(height: 24,),
              TextField(
                controller: rate,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Rate',
                ),
              ),
              SizedBox(height: 24,),
              TextField(
                controller: months,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Months',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.pushNamed(
          //     context,
          //     Calculator.name,
          //     arguments: CaseStudy(
          //       price: double.parse(price.text),
          //       rate: double.parse(rate.text),
          //       months: int.parse(months.text),
          //     )
          // );
          Navigator.pushNamed(
              context,
              Page1.name,

          );
        },
        label: Text('Calculate'),
        icon: Icon(Icons.calculate,),
      ),
    );
  }
}