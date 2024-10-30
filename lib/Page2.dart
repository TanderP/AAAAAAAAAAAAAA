import 'package:assigment1/main.dart';
import 'package:flutter/material.dart';
import 'AnswerFile.dart';

class Variable {
  static var Index = 0;
  static int score = 0;
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<question> questionList = getQuestion();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen())),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(questionList[Variable.Index].questionText,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
              ),
              Container(
                child: Column(
                  children: questionList[Variable.Index]
                      .answersList
                      .map((answer) => Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                fixedSize:
                                    MaterialStateProperty.all(Size(300, 50)),
                              ),
                              child: Text(answer.AnswerText),
                              onPressed: () {
                                setState(() {
                                  Variable.score =
                                      Variable.score + answer.Score;
                                  Funct.personalityResult(context);
                                  Funct.NextQuest(context);
                                });
                              },
                            ),
                          ))
                      .toList(),
                ),
              )
              // using the function from another page u need to use setState
            ],
          ),
        ),
      ),
    );
  }
}
