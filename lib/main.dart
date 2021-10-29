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
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text('Questions'),
            ElevatedButton(child: Text('Answer 1'), onPressed: ans),
            ElevatedButton(child: Text('Answer 2'), onPressed: ans),
            ElevatedButton(child: Text('Answer 3'), onPressed: ans),
          ],
        ),
      ),
    );
  }
}
