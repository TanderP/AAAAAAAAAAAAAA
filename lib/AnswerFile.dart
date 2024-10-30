import 'Page3.dart';
import 'Page2.dart';
import 'package:flutter/material.dart';
import 'Page4.dart';

class question {
  final String questionText;
  final List<AnswerFile> answersList;
  question(this.questionText, this.answersList, {Key? key});
}

class AnswerFile {
  final String AnswerText;
  final int Score;
  AnswerFile(this.AnswerText, this.Score, {Key? key});
}

List<question> getQuestion() {
  List<question> questionList = [
    question(
      'When you go somewhere for the day, would you rather',
      [
        AnswerFile('Go to a museum', 1),
        AnswerFile('Go to a theme park', 2),
        AnswerFile('Go to a zoo', 3),
        AnswerFile('Go to a beach', 4),
      ],
    ),
    question(
      'If you were a teacher, would you rather teach',
      [
        AnswerFile('Math', 1),
        AnswerFile('Science', 2),
        AnswerFile('History', 3),
        AnswerFile('English', 4),
      ],
    ),
    question(
      'Are you usually',
      [
        AnswerFile('Early', 3),
        AnswerFile('On time', 1),
        AnswerFile('Late', 2),
        AnswerFile('Never on time', 4),
      ],
    ),
    question(
      'Do you more often let',
      [
        AnswerFile('Your Mind rule your heart', 4),
        AnswerFile('Your heart rule your Mind', 3),
        AnswerFile('Only heart rule you', 2),
        AnswerFile('Your Mind rule you', 1),
      ],
    ),
    question(
      'How Often do you travel?',
      [
        AnswerFile('Never', 1),
        AnswerFile('Rarely', 2),
        AnswerFile('Commonly', 4),
        AnswerFile('often', 3),
      ],
    ),
    question(
      'Do you like solving complex problems',
      [
        AnswerFile('only when it benefits me', 3),
        AnswerFile('oftenly yes', 2),
        AnswerFile('No', 1),
        AnswerFile('Yes', 4),
      ],
    ),
    question(
      'Are you easly influenced by others',
      [
        AnswerFile('Yes', 2),
        AnswerFile('No', 1),
        AnswerFile('Sometimes', 3),
        AnswerFile('Rarely', 4),
      ],
    ),
    question(
      'Are you a good listener',
      [
        AnswerFile('Yes', 4),
        AnswerFile('No', 1),
        AnswerFile('Sometimes', 3),
        AnswerFile('Rarely', 2),
      ],
    ),
    question(
      'When you have to choosse between two things, do you',
      [
        AnswerFile('Choose the one that is more fun', 2),
        AnswerFile('Choose the one that is more practical', 4),
        AnswerFile('Choose the one that is more interesting', 3),
        AnswerFile('Choose the one that is more useful', 1),
      ],
    ),
    question(
      'Do you like to be in the spotlight',
      [
        AnswerFile('Oftenly Yes', 3),
        AnswerFile('No', 1),
        AnswerFile('Yes', 4),
        AnswerFile('Rarely', 2),
      ],
    ),
  ];

  return questionList;
}

class Funct {
  static void NextQuest(BuildContext context) {
    if (Variable.Index < 9) {
      Variable.Index++; // for reseting the question
    } else if (Variable.Index >= 9) {
      // MaterialPageRoute(builder: (context) => Page3());

      Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
    }

    print(Variable.Index);
    return;
  }

  static void personalityResult(BuildContext context) {
    if (Variable.score >= 0 && Variable.score <= 10) {
      VarString.persResult = 'Cat';
    } else if (Variable.score >= 11 && Variable.score <= 20) {
      VarString.persResult = 'Dog';
    } else if (Variable.score >= 21 && Variable.score <= 30) {
      VarString.persResult = 'Bird';
    } else if (Variable.score >= 31 && Variable.score <= 40) {
      VarString.persResult = 'Dragon';
    }
  }
}

class VarString {
  static String persResult = '';
}
