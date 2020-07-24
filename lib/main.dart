// import 'package:firebase_signup_login/login_signup_page.dart';
import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogSignUp(),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'login_signup_page.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Login Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new LoginSignupPage()
//     );
//   }
// }