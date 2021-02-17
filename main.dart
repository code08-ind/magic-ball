import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/ball$number.png'),
                colorBlendMode: BlendMode.lighten,
              )),
        ),
      ],
    );
  }
}
