// import fltter helper package

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_modal.dart';
import 'widgets/image_list.dart';
import 'dart:convert';

// create a class that must be our stateless widget

// that class should extend statless widget
class App extends StatefulWidget {
  createState() {
   
    return AppState();
  }
}

class AppState extends State<App> {
  var counter = 0;
  List<ImageModel> images =[];
  void fetchImage() async{
  
    // print('Fetching data');
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
 
    setState(() {
    
     images.add(imageModel); 
    
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      body: ImageList(images),
      appBar: new AppBar(
        title: new Text('Lets see some images '),
      ),
      floatingActionButton:
          FloatingActionButton(
            onPressed:  fetchImage,
            child: new Icon(Icons.add),
          ),
        
     
    ));
  }
}
