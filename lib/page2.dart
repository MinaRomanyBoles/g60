import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static final name = '/page2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Page 2')
      ),
    );
  }
}
