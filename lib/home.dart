// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/addtransaction.dart';
import 'package:flutter_pertemuan_3/product.dart';
import 'package:flutter_pertemuan_3/addproduct.dart';
import 'package:flutter_pertemuan_3/transaction.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tutorials",
      home: cupertinoTab(),
    );
  }
}

class classes extends StatelessWidget {
  const classes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Wellcome",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Product In",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        '10',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Product Out",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        '4',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 40,
                ),
              ],
            ),
            Text('Low Stock',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(
              'Stock Warning',
              style: const TextStyle(fontSize: 10),
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QQnZ0yM4NlzHzSXhHt8qgwHaHa%26pid%3DApi&f=1",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Brand new shoes',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'SH-231',
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 10),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("Stock 1"),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QQnZ0yM4NlzHzSXhHt8qgwHaHa%26pid%3DApi&f=1",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand new shoes',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231',
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 10)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    // child: Image.network('https://loremflickr.com/80/80'),
                    child: Image.network(
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QQnZ0yM4NlzHzSXhHt8qgwHaHa%26pid%3DApi&f=1",
                        width: 80,
                        height: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand new shoes',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231',
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 10)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton.icon(
                color: Colors.blue,
                label: Text('New Transaction'),
                icon: Icon(Icons.arrow_downward),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return prosesTransaksi();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class cupertinoTab extends StatefulWidget {
  const cupertinoTab({Key? key}) : super(key: key);

  @override
  State<cupertinoTab> createState() => _cupertinoTabState();
}

class _cupertinoTabState extends State<cupertinoTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payments_sharp), label: "Transaction"),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return classes();
            break;

          case 1:
            return Product();
            break;

          case 2:
            return Transaksi();
            break;

          default:
            return classes();
        }
      },
    );
  }
}
