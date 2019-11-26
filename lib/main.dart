import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
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
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DiceState();
  }
}

class DiceState extends State<DicePage> {
 int leftdice= Random().nextInt(6)+1,rightdice= Random().nextInt(6)+1;
  roll() {
    leftdice = Random().nextInt(6)+1;
    rightdice=Random().nextInt(6)+1;
  }

  // int nmum= roll();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('images/dice$leftdice.png'),
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('images/dice$rightdice.png'),
                    ))
              ],
            ),
          ),
        ),
    Divider(height: 95,),
        RaisedButton(
            color: Colors.red,
            elevation: 25,
            child: Text(
              "Roll the Dices",
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 22, color: Colors.white),
            ),
            onPressed: () => setState(() {
                  roll();
                }))
      ],
    );
  }
}
