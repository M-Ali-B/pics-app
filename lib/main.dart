// we will import a helper library  from flutter to get content on the screen

import 'package:flutter/material.dart';
import 'src/app.dart';
// define a main function where our code runs 

void main() {
 // create a widget of text 

 var app = App();
// take the text widget and show it on screen 
runApp(app);

}