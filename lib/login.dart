// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/home.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Image.asset(
                  "image/loginImage.png",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "image/Logo.png",
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "First manages your inventory, ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Then manages the world",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            buttonLogin()
          ],
        ),
      ),
    );
  }
}

class buttonLogin extends StatefulWidget {
  const buttonLogin({Key? key}) : super(key: key);

  @override
  State<buttonLogin> createState() => _buttonLoginState();
}

class _buttonLoginState extends State<buttonLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Home();
            }));
          },
          label: Row(
            children: <Widget>[
              Image.asset(
                "image/google.png",
                width: 40,
              ),
              Text("Login With Google")
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 10), child: Text("Privacy Policy"))
      ],
    );
  }
}
