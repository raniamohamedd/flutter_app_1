import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButtom extends StatelessWidget {
  const AnswerButtom(
      {super.key, required this.answertext, required this.onPressed});
  final String answertext;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          onPressed: onPressed,
          child: Text(answertext,
              style: GoogleFonts.abhayaLibre(
                  fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
