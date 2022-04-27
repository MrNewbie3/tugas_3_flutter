// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/addtransaction.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            "image/Logo.png",
            width: 8,
          ),
          title: Center(
            child: Text(
              "Transactions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 255, 193),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Brand New Shoes",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                          ),
                          Text(
                            "SH-231",
                            style: TextStyle(height: 1.3),
                          ),
                          Text(
                            "20 jan 2022 at 12.30",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 1, 165, 6)),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_downward_rounded,
                        size: 40,
                        color: Color.fromARGB(255, 1, 165, 6),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 190, 190),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Brand New Shoes",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                          ),
                          Text(
                            "SH-231",
                            style: TextStyle(height: 1.3),
                          ),
                          Text(
                            "20 jan 2022 at 12.30",
                            style: TextStyle(
                                height: 1.5,
                                color: Color.fromARGB(255, 165, 1, 1)),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_upward_rounded,
                        size: 40,
                        color: Color.fromARGB(255, 165, 1, 1),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 50),
          width: 210,
          height: 40,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return prosesTransaksi();
              }));
            },
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(19)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.compare_arrows_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  "New Transaction",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
