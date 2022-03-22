import 'package:flutter/material.dart';
import 'landscape_orientation.dart';

// Portrait orientation:

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homelayout(),
  ));
}

class Homelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('SECOND ASSIGNMENT',style: TextStyle(fontSize: 15))
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white60,
        ),
        child: Drawer(
          child: ListView(
            padding: const EdgeInsets.only(top: 70),
            children: const <Widget>[
              ListTile(
                title: Text(
                  'FIRST ELEMENT',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'SECOND ELEMENT',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'THIRD ELEMENT',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'FORTH ELEMENT',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  'FIFTH ELEMENT',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            child: const Text('Landscape orientation'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Landscape_orientation()),
              );
            },
          ),
        ),
      ),
    );
  }
}
