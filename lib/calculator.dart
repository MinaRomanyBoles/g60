import 'package:flutter/material.dart';
import 'package:untitled60/case_study.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  static const String name = '/calculator';


  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    CaseStudy data = ModalRoute.of(context)!.settings.arguments as CaseStudy;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('${data.price}'),
              Text('${data.rate}'),
              Text('${data.months}'),
            ],
          )
        )
      ),
    );
  }
}
