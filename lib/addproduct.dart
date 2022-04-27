// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/product.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Tutorials",
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Product();
            }));
          },
        ),
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
        child: ListView(
          children: <Widget>[
            Text(
              "Product Informaton",
              textAlign: TextAlign.start,
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
                  color: Color.fromARGB(255, 13, 0, 255),
                ),
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.shade100,
                  border:
                      Border.all(width: 2, color: Colors.blueAccent.shade700),
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
              margin: EdgeInsets.only(bottom: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 212, 212, 212)),
                  ),
                  labelText: "Product ID",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Text(
              "Price",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 212, 212, 212)),
                  ),
                  labelText: "Product Qty",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Text(
              "Stock",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 212, 212, 212)),
                  ),
                  labelText: "Product Name",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 212, 212, 212)),
                  ),
                  labelText: "Enter Description....",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Text(
              "Low Stock Warning",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Change value to O for disable low stock warning",
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 100, top: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 212, 212, 212)),
                  ),
                  labelText: "Product Name",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
