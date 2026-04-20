import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required this.color});
  final Color color;
  static const name = '/page1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
          child: Text('Page 1')
      ),
    );
  }
}
