import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Background Changer",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Color> randomColorList = [
    Colors.yellow,
    Colors.blue,
    Colors.white,
    Colors.brown,
    Colors.pink,
    Colors.cyan,
    Colors.green,
    Colors.lightBlue,
    Colors.orange,
    Colors.purple,
    Colors.deepPurple,
    Colors.blueGrey
  ];

  int index;
  Color colorRightNow = Colors.blue;

  void changeColor(){
     setState(() {
       index = Random().nextInt(randomColorList.length);
       colorRightNow = randomColorList[index];
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorRightNow,
      body: Center(
       child: FlatButton(
         onPressed: changeColor, 
         child: Text(
           "Change !",
           style: TextStyle(
             fontSize: 25.0,                             
             fontStyle: FontStyle.italic, 
             fontWeight: FontWeight.bold,
           ),
           ),
           splashColor: Colors.transparent,
       ),
      ),
     
    );
    
    
  }
}