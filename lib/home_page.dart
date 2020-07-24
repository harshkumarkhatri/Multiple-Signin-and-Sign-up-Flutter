import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  FirebaseUser user=null;
  Home({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: (this.user==null?Text("You are in"):Text("username= ${user.displayName.toString()}")
          )),
        );
  }
}