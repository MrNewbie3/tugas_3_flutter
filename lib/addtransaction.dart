import 'package:flutter/material.dart';

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
              Text("Transaction"),
              Container(child: Text("Select Product")),
              Container(
                child: TextField(),
              ),
              Container(
                child: Text("Transaction Type"),
              ),
              Row(
                children: <Widget>[
                  RaisedButton(onPressed: () {}),
                  RaisedButton(onPressed: () {}),
                ],
              ),
              Text("Quality"),
              TextField(),
              Text("Note"),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
