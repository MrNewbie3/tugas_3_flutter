// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_pertemuan_3/home.dart';
import 'package:flutter_pertemuan_3/login.dart';
import 'package:flutter_pertemuan_3/product.dart';
import 'package:flutter_pertemuan_3/addproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inventory App",
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
