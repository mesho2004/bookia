import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customText extends StatelessWidget {
   customText({super.key,required this.title, this.titleFontSize=25});
  String title;
  double titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: TextStyle(
          fontSize: titleFontSize,
          fontWeight: FontWeight.bold,
          fontFamily: "Amiri"


      ),);
  }
}
