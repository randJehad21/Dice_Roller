import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main() {
  //The runApp is the main to display on screen , MaterialApp() parameter in runApp()
  //this line show combination between Material APP widget and text Widget
  runApp( 
   const  MaterialApp(
    home: Scaffold(
      //backgroundColor: Color.fromARGB(255, 215, 171, 186), //If I want to have one color for the background I use it
      body:  GradientContainer( Color.fromARGB(255, 160, 109, 94), Color.fromARGB(255, 202, 191, 89) ),
    ),
  )
);
}


