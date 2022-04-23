import 'package:flutter/material.dart';
import 'package:flutter_pertemuan_3/main.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int addingItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: addingItem,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Image.network(
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QQnZ0yM4NlzHzSXhHt8qgwHaHa%26pid%3DApi&f=1"),
              trailing: IconButton(
                  onPressed: (() {
                    setState(() {
                      addingItem--;
                    });
                  }),
                  icon: Icon(Icons.delete)),
              title: Text(
                "Brand New Shoes",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                "SH-231",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50),
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              addingItem++;
            });
          },
          icon: Icon(Icons.add),
          label: Text("Tambah"),
        ),
      ),
    );
  }
}
