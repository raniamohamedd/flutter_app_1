import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/my_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  const Result(this.restart, this.selectedanswer, {super.key});
  final List<String> selectedanswer;
  final void Function() restart;

  List<Map<String, Object>> get getsummaryary {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedanswer.length; i++) {
      summary.add({
        'question.index': i,
        'question': question[i].text,
        'the correct answer': question[i].answers[0],
        'my answer': selectedanswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var numofcorrectanswers = 0;
    for (var i = 0; i < selectedanswer.length; i++) {
      getsummaryary[i]['my answer'] == getsummaryary[i]['the correct answer']
          ? numofcorrectanswers++
          : numofcorrectanswers = numofcorrectanswers;
    }

    return Column(
      children: [
        const SizedBox(height: 120),
        Text(
          'you answerd $numofcorrectanswers correct questions out of ${question.length}',
          style: GoogleFonts.b612(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 650,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  ...getsummaryary.map((e) => Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),

                              CircleAvatar(
                                radius: 16,
                                backgroundColor: e['my answer'] ==
                                        e['the correct answer']
                                    ? const Color.fromARGB(255, 19, 91, 22)
                                    : const Color.fromARGB(255, 164, 50, 18),
                                foregroundColor:
                                    const Color.fromARGB(255, 251, 251, 252),
                                child: Text(((e['question.index'] as int) + 1)
                                    .toString()),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(
                                      e['question'].toString(),
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                        'my answer : ' +
                                            (e['my answer'].toString()),
                                        style: TextStyle(
                                            color: e['my answer'] ==
                                                    e['the correct answer']
                                                ? const Color.fromARGB(
                                                    255, 7, 112, 11)
                                                : const Color.fromARGB(
                                                    255, 164, 50, 18),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'the answer: ' +
                                          e['the correct answer'].toString(),
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 27, 115, 9),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 20)
                                  ],
                                ),
                              ),
                              //   SizedBox(height: 10)
                              const SizedBox(width: 25)
                            ],
                          ),
                          const SizedBox(height: 5),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.fromLTRB(160, 10, 160, 20),
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              icon: const Icon(
                Icons.restart_alt,
                color: Color.fromARGB(255, 8, 8, 8),
              ),
              onPressed: restart,
              label: Text(' try again',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.abhayaLibre(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 11, 11, 11).withOpacity(1),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ))),
        ), //
      ],
    );
  }
}
