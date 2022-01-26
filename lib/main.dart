import 'dart:math';
import 'package:flutter/material.dart';

void main(){
    return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            title: Text("dice",)
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

  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changediceface () {
      setState(() {
        leftdicenumber = Random().nextInt(6)+1;
        rightdicenumber = Random().nextInt(6)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changediceface();
              },
              child: Image(
                  image: AssetImage('images/dice$leftdicenumber.png')
              ),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: (){
                changediceface();
              },
              child: Image(
                  image: AssetImage('images/dice$rightdicenumber.png')
              ),
            ),
          ),
        ],
      ),
    );
  }
}

