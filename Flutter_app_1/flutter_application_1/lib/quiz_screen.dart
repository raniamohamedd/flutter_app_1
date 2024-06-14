import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/my_questions.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/questions.dart';
import 'package:flutter_application_1/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswer = [];
  Widget? activescreen;

  void choose(String myanswer) {
    selectedanswer.add(myanswer);

    if (selectedanswer.length == question.length) {
      setState(() {
        activescreen = Result(restart, selectedanswer);
      });
    }
    log(selectedanswer.toString());
  }

  void restart() {
    setState(() {
      selectedanswer = [];
      activescreen = Home(x);
    });
  }

  @override
  void initState() {
    super.initState();
    activescreen = Home(x);
  }

  void x() {
    setState(() {
      activescreen = Question(choose);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 182, 254),
              Color.fromARGB(255, 6, 37, 110)
            ])),
            child: activescreen),
      ),
    );
  }
}
