import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void ans() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    var ques = ['What\'s Your favorite car?', 'What\'s your favorite colour?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text('Questions'),
            ElevatedButton(
                child: Text('Answer 1'),
                onPressed: () => print('answer 1 Choosen!!')),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 Choosen!!')),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer 3 Choosen!!')),
          ],
        ),
      ),
    );
  }
}
