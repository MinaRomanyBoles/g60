import 'package:flutter/material.dart';
import 'package:untitled60/home.dart';


class Profile extends StatefulWidget {
  const Profile({super.key, required this.email});
  final String email;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  var username = widget.email.split('@')[0];
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            Text(username, style: Theme.of(context).textTheme.headlineLarge,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
      ),
    );
  }
}

