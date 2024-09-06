import 'package:azkar/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AzkarApp());
  


}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );

  }


}