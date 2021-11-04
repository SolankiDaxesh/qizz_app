import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  void _ans() {
    setState(() {
      quesIndex = quesIndex + 1;
    });
    print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      {
        'questionText': 'What\'s Your favorite car?',
        'answers': ['BMW', 'Audi', 'Mercedes', 'Ferrari']
      },
      {
        'questionText': 'What\'s your favorite colour?',
        'answers': ['Black', 'Red', 'Blue', 'Pink'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Cow', 'Python'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(ques[quesIndex]['questionText']),
            ...(ques[quesIndex]['answers'] as List<String>).map((answer) {
              return Answer(_ans, answer);
            }).toList()
            //Answer(_ans),
            //Answer(_ans),
            //Answer(_ans)
          ],
        ),
      ),
    );
  }
}
