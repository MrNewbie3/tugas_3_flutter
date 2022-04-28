// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/home.dart';

class prosesTransaksi extends StatefulWidget {
  const prosesTransaksi({Key? key}) : super(key: key);

  @override
  State<prosesTransaksi> createState() => _prosesTransaksiState();
}

class _prosesTransaksiState extends State<prosesTransaksi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30,
            ),
          ),
          title: Center(
            child: Text(
              "Add Transaction",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Transaction",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("Select Product")),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.blue),
                      labelText: "Shoes 101",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 5),
                child: Text("Transaction Type"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromARGB(255, 206, 255, 207),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        "In",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 152, 5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Out"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text("Quantity"),
                margin: EdgeInsets.only(top: 15, bottom: 10),
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "10",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10, top: 15),
                  child: Text("Note")),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                      border: OutlineInputBorder(),
                      labelText: "Enter a Description..."),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: ElevatedButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext page) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Center(
                child: Text(
                  "New Transaction Added",
                ),
              ),
              actions: <Widget>[
                Center(
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 4,
                    onPressed: () {
                      Navigator.pop(page);
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          child: Text("Add Transaction"),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20)),
        ),
      ),
    );
  }
}
