import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home(this.x, {super.key});

  final void Function() x;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 250),
        Image.asset(
          'images/c++.png',
          width: 250,
        ),
        const SizedBox(height: 40),
        Text(
          '  Learn C++ !',
          style: GoogleFonts.abhayaLibre(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 180),
        ElevatedButton.icon(
            icon: const Icon(Icons.login),
            onPressed: x,
            label: Text('start quiz',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 30,
                    color:
                        const Color.fromARGB(255, 11, 81, 160).withOpacity(1),
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2)))
      ]),
    );
  }
}
