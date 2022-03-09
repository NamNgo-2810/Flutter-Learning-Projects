import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue[900],
            appBar: AppBar(
                title: Text('Ask me Anything'),
                backgroundColor: Colors.blue,
            ),
            body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  // const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
    int ballNumber = 1;

    void changeAnswer() {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
    }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
                changeAnswer();
            },
            child: Image.asset('images/ball$ballNumber.png'),
        ),
    );
  }
}

