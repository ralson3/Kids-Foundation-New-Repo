import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
          Image(
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            image: AssetImage('assets/images/background.JPG'),
            fit: BoxFit.cover,
          ),
          Text('KIDS FOUNDATION', style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: TextField(
            decoration:InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Username',
              prefixIcon: Icon(Icons.account_box,
              size: 30.0,
                  ),
            ),
          ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: TextField(
              decoration:InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Username',
                prefixIcon: Icon(Icons.account_box,
                  size: 30.0,
                ),
              ),
            ),
          ),
        ],
        ),
      ),
    ),
    );
  }
}
