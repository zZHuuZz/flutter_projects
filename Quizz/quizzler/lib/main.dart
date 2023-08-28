import 'package:flutter/material.dart';
import 'quizz_brain.dart';

QuizzBrain quizzBrain = QuizzBrain();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void printIcon(bool ans) {
    if (ans == quizzBrain.getQuestionAnswer()) {
      setState(() {
        if (quizzBrain.nextQuestion(context)) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
      });
    } else {
      setState(() {
        if (quizzBrain.nextQuestion(context)) {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      });
    }
  }

  Widget showOption(Color color, String text) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        color: color,
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            if (text == 'True') {
              printIcon(true);
            } else {
              printIcon(false);
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizzBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.green,
              child: TextButton(
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  printIcon(true);
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: showOption(Colors.red, 'false'),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
