import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber = 1;
  int rightnumber = 1;

  void changedice(){
    setState(() {
      leftnumber = Random().nextInt(6)+1;
      print("Left = $leftnumber");
      rightnumber = Random().nextInt(6)+1;
      print("Right = $rightnumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changedice();
                },
                child: Image.asset('images/dice$leftnumber.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changedice();
                },
                child: Image.asset('images/dice$rightnumber.png'),
              )
          )
        ],
      ),
    );
  }
}
