import 'package:flutter/material.dart';
import 'HomePage.dart';

void main(){

runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "Dice Role",
      theme: new ThemeData(

        primarySwatch: Colors.pink
      ),

    home: HomePage(),    

    );

  
  }
}