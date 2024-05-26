import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Added import for Google Fonts

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 300,
            left: -152,
            child: Container(
              width: 700,
              height: 664,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(689, 664)),
              ),
            ),
          ),
          Positioned(
              top: 442,
              left: 51,
              child: Container(
                  width: 294,
                  height: 56,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(1, 178, 125, 1),
                  ),
                  child: Expanded(
                      child: Center(
                          child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromRGBO(
                              1, 178, 125, 1), // using RGBO values
                        ),
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(294, 56))),
                    child: Text(
                      'START',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ))))),
          Positioned(
            top: 524,
            left: 190,
            child: Text(
              'OR',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(0, 0, 0, 0.39),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 52,
            child: Text(
              'Create an Account',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 626,
            left: 30,
            child: Text(
              'Agency member register',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 244,
            child: Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(236, 109, 55, 1),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 628,
            left: 283,
            child: Text(
              'Check',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(236, 109, 55, 1),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 40,
            child: Container(
              width: 326,
              height: 195,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/UNITED.gif'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
