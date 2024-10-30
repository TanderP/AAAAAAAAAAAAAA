import 'package:assigment1/main.dart';
import 'package:flutter/material.dart';
import 'Page2.dart';
import 'AnswerFile.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('Go back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('CONGRATS ${NameFile.nameVal} '),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Your Score is ${Variable.score}'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'You are a ${VarString.persResult} person',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.red,
                      width: 5,
                    ),
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Text('! WARNING !',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Text('This is Just A DEMO',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
