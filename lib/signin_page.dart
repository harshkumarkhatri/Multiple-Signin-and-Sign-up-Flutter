import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final AuthSer

  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Sign in page"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 10),
              child: TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Please type email';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                    labelText: 'Email',
                    icon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(),
                    helperText: "Enter your username"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 10),
              child: TextFormField(
                validator: (input) {
                  if (input.length < 5) {
                    return '6 char or long';
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    helperText: "Enter your password"),
                obscureText: true,
              ),
            ),SizedBox(height: 20,),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              onPressed: signIn,
              child: Container(
                child: Text("Sign in",style: TextStyle(fontSize: 20),),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  void signIn() async {
    final formState = _formKey.currentState;
    // print(_email+" "+_password);
    if (formState.validate()) {
      // Login with firebase
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance
                .signInWithEmailAndPassword(email: _email, password: _password))
            .user;
        print("success");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } catch (e) {
        print(e);
      }
    }
  }
}
