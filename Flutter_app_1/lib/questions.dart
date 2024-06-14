import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'data/my_questions.dart';

class Question extends StatefulWidget {
  const Question(this.myanswer, {super.key});
  final void Function(String) myanswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentindex = 0;

  void answerquestion(String answer) {
    widget.myanswer(answer);
    setState(() {
      currentindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final curr =question[currentindex];
    return Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: SizedBox(
              child: Center(
                child: Column(
            
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                      curr.text,
                    ),
                    const SizedBox(height: 50),
                    ...curr.fetansshuff.map((i) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: AnswerButtom(
                            answertext: i,
                            onPressed: () {
                              answerquestion(i);
                            }),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
