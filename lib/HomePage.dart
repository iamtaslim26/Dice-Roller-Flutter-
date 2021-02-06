import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();




  
}

class _HomePageState extends State<HomePage> {

  AssetImage one=AssetImage("images/one.png");
  AssetImage two=AssetImage("images/two.png");
  AssetImage three=AssetImage("images/three.png");
  AssetImage four=AssetImage("images/four.png");
  AssetImage five=AssetImage("images/five.png");
  AssetImage six=AssetImage("images/six.png");

  AssetImage dice_image;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {

      // initial case

      dice_image=one;
    });


  }

  void rolldice(){

    int random=(1+Random().nextInt(6));    // it will take 1 to 6

    AssetImage new_image;


    switch(random){

      case 1: new_image=one;
      break;

      case 2: new_image=two;
      break;

      case 3: new_image=three;
      break;

      case 4: new_image=four;
      break;

      case 5: new_image=five;
      break;


      case 6: new_image=six;
      break;

    }


    setState(() {

      dice_image=new_image;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(title: new Text("Dice Roller")
      
      ,),

      body: Container(

        child:Center(

            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                  Image(
                    
                    image: dice_image,
                    width: 200.0,
                    height: 200.0,
                    
                    ),

                    Container(
                        margin: EdgeInsets.only(top: 100.0),
                        child: new RaisedButton(
                          
                          child: new Text("Role the dice"),
                          color: Colors.pink,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                          onPressed: rolldice,

                        
                        ),


                    ) 

            ],),

        ),

      ),
      
    );
  }
}