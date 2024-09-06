import 'package:flutter/material.dart';

import 'custom_text.dart';

class zikr extends StatelessWidget {
   zikr({super.key,required this.title,this.backgroundColor,required this.counter});
  String title;
  Color? backgroundColor;
  int counter;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20
          )
          )
      ),
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 45),
      child: Column(
        children: [
          customText(title: title,),
          customText(title:"$counter",titleFontSize: 70,),

        ],
      ),


    );
  }
}
