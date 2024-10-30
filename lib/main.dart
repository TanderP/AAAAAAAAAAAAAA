import 'package:flutter/material.dart';
import 'Page2.dart';
import 'Page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // to remove debug banner
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var TextFieldControlloer = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
            child: Text(
          "Welcome !!!",
          style: TextStyle(
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        )),
        automaticallyImplyLeading: false,
      ),
      // space
      body: Center(
        child: SizedBox(
          width: 600,
          height: 300,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: const Text('Insert your Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                    controller: TextFieldControlloer,
                    onSubmitted: (String value) {
                      setState(() {
                        NameFile.nameVal = value;

                        print(NameFile.nameVal);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(200, 50)),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    child: Text('Start'),
                    onPressed: () => setState(
                      () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NameFile {
  static String nameVal = '';
}
