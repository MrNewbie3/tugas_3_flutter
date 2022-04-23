// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/main.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tutorials",
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Add Product',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Product Informaton",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Text(
                "Product Image",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                height: 200,
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Text(
                "Product ID",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Product ID",
                  ),
                ),
              ),
              Text(
                "Product Qty",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Product Qty",
                  ),
                ),
              ),
              Text(
                "Product Name",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Product Name",
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
