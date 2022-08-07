import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Quizpage(),
          ),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);
  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> score = [];
  List<String> question = [
    'Stephen is good boy',
    'Gandhi was the first Prime Minister of India',
    'Cricket is the National sport of India',
  ];
  List<bool> answer = [
    true,
    false,
    false,
  ];

  int questionnum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[questionnum],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                bool correctanswer = answer[questionnum];
                setState(() {
                  questionnum++;
                  if (correctanswer == true) {
                    print('User corret');
                  } else {
                    print('User wrong');
                  }
                });
              }, //USER PRESSED TRUE
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                bool correctanswer = answer[questionnum];
                setState(() {
                  questionnum++;
                  if (correctanswer == false) {
                    print('User corret');
                  } else {
                    print('User wrong');
                  }
                });
              }, //USER PRESSED FALSE
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 5,
          thickness: 1,
          color: Colors.white,
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
