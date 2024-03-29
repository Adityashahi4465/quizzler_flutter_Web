import 'package:flutter/material.dart';
import 'quizeBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_level.dart';

Quizbrain quizbrain = Quizbrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  //  Lists
  List<Icon> scorekeeper = [];

  void checkAnswer(bool userPickedAns) {
    bool correctans = quizbrain.getQuestionAnswer();
    setState(() {
      if (quizbrain.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: 'Quiz Finished!',
          desc: 'You\'ve reached the end of the quiz.',
          buttons: [
            DialogButton(
              child: Text(
                "NEXT LEVEL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizLevel())),
              color: Color.fromRGBO(0, 179, 134, 1.0),
              radius: BorderRadius.circular(0.0),
            ),
          ],
        ).show();

        quizbrain.reset();
        scorekeeper = [];
      } else {
        if (userPickedAns == correctans) {
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizbrain.nextQuestion();
      }
    });
  }

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];
  // List<bool> answers = [
  //   false,
  //   true,
  //   true,
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Question Text
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizbrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // True Button
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(true);
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        SafeArea(
          child: Row(
            children: scorekeeper,
          ),
        )
      ],
    );
  }
}
