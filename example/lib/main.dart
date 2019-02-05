import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pusher ChatKit Tester',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text1 = "Hi, This is Text1";
  String text2 = "Hello From Text2";
  floatingButtonOnPressed() {
    setState(() {
      text1 = "Welcome Magic";
      text2 = "Welcome Tiny Programmers";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pusher ChatKit Example Main Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$text1',
            ),
            Text(
              '$text2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => floatingButtonOnPressed(),
        tooltip: 'Do Magic',
        child: Icon(Icons.line_style),
      ),
    );
  }
}
