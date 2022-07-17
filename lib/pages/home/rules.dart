import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('How to play'),),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Tic-tac-toe, noughts and crosses, or Xs and Os is a paper-and-pencil game for two players who take turns marking the spaces in a three-by-three grid with X or O. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner. ',
        style:TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
        ),
        ),
      )
    );
  }
}