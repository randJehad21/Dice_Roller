import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';
//import 'package:first_app/text_style.dart';

//I can do var to reduce code line
//to define the gradient start and end from where L to R or U to D
//final mean never change, const it is like final but provide extra info for dart
const startAligment = Alignment
    .topLeft; //if it will be initialized later Alignment? startAligment;
const endAligment = Alignment.bottomRight;

// we want ot create widget
// we will remove StatelessWidget and replace it with StatefulWidget since the dice image we want to it to change
//but the problem only the button and img is sutable with StatefulWidget so we will devide widget into diff file
class GradientContainer extends StatelessWidget {
// the key argument it accebtable parameter fro the extended StatelessWidget
  const GradientContainer(this.color1, this.color2,
      {super.key}); //super(key : key); mean this.key=key

//we can use this constructi=or and it assign color directly
  const GradientContainer.yellow({super.key})
      : color1 = Colors.deepOrangeAccent,
        color2 = Colors.yellow;

  final Color color1;
  final Color color2;

//method to return widget
  @override // we override method in StatelessWidget
  Widget build(context) {
    return Container(
      //const I delete it from decoration since the var may change
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        /*  [Color.fromARGB(255, 226, 165, 185), 
           Color.fromARGB(255, 144, 185, 218),
           Color.fromARGB(255, 200, 145, 210] */

        //to define the gradient start and end from where L to R or U to D
        begin: startAligment, //Alignment.topLeft
        end: endAligment, //Alignment.bottomRight
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

/* FIRST APPROACH

// we want ot create widget
class GradientContainer extends StatelessWidget{ 
// the key argument it accebtable parameter fro the extended StatelessWidget
  const GradientContainer(this.colors,{super.key}); //super(key : key); mean this.key=key

final List <Color> colors;

//method to return widget
@override // we override method in StatelessWidget
  Widget build(context){

return Container( 
  //const I delete it from decoration since the var may change
       decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: colors
        /*  [Color.fromARGB(255, 226, 165, 185), 
           Color.fromARGB(255, 144, 185, 218),
           Color.fromARGB(255, 200, 145, 210] */
           ,
           //to define the gradient start and end from where L to R or U to D
           begin: startAligment,//Alignment.topLeft
           end: endAligment, //Alignment.bottomRight
        )
       ),
        child: const Center(
     child:  StyledText('Hello Engineer <3'),
         
        ),
      )
      ;
  }

}

*/
