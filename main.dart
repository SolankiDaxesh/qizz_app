import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var quesIndex = 0;

  void ans() {
    setState(() {
      quesIndex = quesIndex + 1;
    });
    print(quesIndex);
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
            Text(ques[quesIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: ans),
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
