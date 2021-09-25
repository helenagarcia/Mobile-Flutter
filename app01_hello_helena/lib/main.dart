import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.pink,
      ),
      home: widgetHome(),
    );
  }
}
class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("APP01 - Hello Helena"),
          centerTitle: true,
          ),
          body: Container(
            color: Colors.white60,
            child: Center(
              child: Text("Hello Helena!",
              style: TextStyle(
                fontSize: 30,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  //decoration: TextDecoration.overline,
                  decorationColor: Colors.orange,
                  decorationStyle: TextDecorationStyle.dashed,
              )),
            ),
          ),
    );
  }
}





