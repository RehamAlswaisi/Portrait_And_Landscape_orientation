import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Landscape orientation:

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Landscape_orientation(),
  ));
}

class Landscape_orientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: const Text('SECOND ASSIGNMENT', style: TextStyle(fontSize: 15))),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(top: 30, left: 10),
          children: const <Widget>[
            ListTile(
              title: Text(
                'FIRST ELEMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                'SECOND ELEMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                'THIRD ELEMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                'FORTH ELEMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                'FIFTH ELEMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        ),
        color: MediaQuery.of(context).orientation == Orientation.landscape ? Colors.white : Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 2,
      ),
    );
  }
}
