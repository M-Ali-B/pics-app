// import fltter helper package

import 'package:flutter/material.dart';

// create a class that must be our stateless widget

// that class should extend statless widget
class App extends StatefulWidget{

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
          body:Text('$counter'),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: new Icon(Icons.add),

      ),
      appBar: new AppBar(
        title: new Text('Lets see some images '),
      ),
    ));
  }
}
