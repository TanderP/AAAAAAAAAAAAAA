import 'package:assigment1/Page2.dart';
import 'package:flutter/material.dart';
import 'page4.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(children: [
            Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    child: Text('Show Result'),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(200, 50)),
                    ),
                    onPressed: () => setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page4()));
                        }))),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('Restart ?'),
                  onPressed: () => setState(() {
                        Variable.Index = 0;
                        Variable.score = 0;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
                      })),
            )
          ]),
        ),
      ),
    );
  }
}
