// import fltter helper package

import 'package:flutter/material.dart';

// create a class that must be our stateless widget

// that class should extend statless widget
class App extends StatefulWidget {
  createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      body: new Center(

      child:Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text(
        "$counter",
       
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 52,
          
          
          ),
      ),
]
        
      ),
        ),
      appBar: new AppBar(
        title: new Text('Lets see some images '),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: new Text('Reset'),
            backgroundColor: Colors.red,
            onPressed: (() {
              setState(() {
                counter = 0;
              });
            }),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: new Icon(Icons.add),
          ),
        ],
      ),
    ));
  }
}
