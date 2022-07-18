import 'package:flutter/material.dart';
import 'quiz_level.dart';

class QuizeTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Select Quiz Type',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Button(
                text: 'Science',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
            Button(
                text: 'Mathematics',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
            Button(
                text: 'Political',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
            Button(
                text: 'History',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
            Button(
                text: 'Geography',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
            Button(
                text: 'Computer',
                textcolor: Colors.red[900],
                bgcolor: Colors.orange,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizLevel()));
                }),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button(
      {@required this.text,
      @required this.onPressed,
      this.textcolor,
      this.bgcolor});
  final String text;
  final Function onPressed;
  final Color textcolor;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
        // onPressed: onPressed,
        child: Text(
          '$text',
          style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
          textAlign: TextAlign.center,
        ),

        onPressed: onPressed,

        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.only(top: 18, bottom: 18),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(bgcolor),
        ),
      ),
    );
  }
}
