 import 'package:flutter/material.dart';


class StyledText extends StatelessWidget{

  // I want to make constructor take value
   const StyledText( this.text, {super.key});

final String text;

@override // we override method in StatelessWidget
  Widget build(context){
    return Text(
      //here any app will use this widget will always print this statment so we have to make it dynamic
      //to avoid that we will but text in the class used between ()
      text,
    style: const TextStyle(
           color: Colors.white,
           fontSize: 28.0
            ),

    );
  }
  
}