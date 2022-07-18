import 'package:flutter/material.dart';
import 'quize_types.dart';
import 'quize_page.dart';

class QuizLevel extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text(
            'Select Quiz Level',
            style: TextStyle(
              color: Colors.grey[300],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Button(
                  text: 'EASY',
                  bgcolor: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  }),
              Button(
                  text: 'MEDIUM',
                  bgcolor: Colors.yellow,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  }),
              Button(
                  text: 'HARD',
                  bgcolor: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  }),
            ],
          ),
        ));
  }
}
