import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton ({super.key,required this.onPressedFunction,required this.buttonTitle,this.buttonWidth,this.buttonInsets,this.FontSize});
  Function()? onPressedFunction;
  String buttonTitle;
  double? buttonWidth;
  EdgeInsets? buttonInsets;
  double? FontSize;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:buttonWidth,
      child: ElevatedButton(
        onPressed:onPressedFunction,
        child: Text(
        buttonTitle,
        style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "Amiri",
          fontSize: FontSize
        ),),
        style: ElevatedButton.styleFrom(
          padding:
          buttonInsets,
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
          ),

        ),


      ),
    );
  }
}
