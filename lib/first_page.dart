import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'signup_page.dart';


class LogSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                  ),
                  Text(
                    "Login UI",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(160),
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZILQdcAimYV79fZ5pkR2F8YefkZQNtTzMtQ&usqp=CAU'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                  ),
                  Text(
                    "New user",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue)),
              textColor: Colors.white,
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(18),
                child: Container(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "Already have an account",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: Colors.blue),
              ),
              textColor: Colors.white,
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(18),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}