import 'package:azkar/azkar_screen.dart';
import 'package:azkar/constants.dart';
import 'package:azkar/custom_button.dart';
import 'package:azkar/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             customText(title: "مرحبا بكم في تطبيق اذكار",),
                CustomElevatedButton(
                  FontSize: 18,
                  buttonTitle: "الدخول الى التطبيق",onPressedFunction: () {
                  navigateTo(context,AzkarScreen());
                },
                ),
                CustomElevatedButton(
                  FontSize: 18,
                  buttonTitle: "الخروج من التطبيق",onPressedFunction: (){
                    SystemNavigator.pop();

                },),


              ],


            ),
          ),
        ),
      ),




    );
  }



}