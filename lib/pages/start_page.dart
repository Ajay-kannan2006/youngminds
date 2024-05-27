import 'package:crisisconnect/pages/emergency_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Added import for Google Fonts

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: screenHeight * 0.375,
            left: -screenWidth * 0.47,
            child: Container(
              width: screenWidth * 1.94,
              height: screenHeight * 0.83,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(689, 664)),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.5525,
            left: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth * 0.816,
              height: screenHeight * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmergencyButton(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(screenWidth * 0.816, screenHeight * 0.07),
                ),
                child: Text(
                  'START',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: screenHeight * 0.03,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.655,
            left: screenWidth * 0.46,
            child: Text(
              'OR',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(0, 0, 0, 0.39),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.725,
            left: screenWidth * 0.144,
            child: Text(
              'Create an Account',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.7825,
            left: screenWidth * 0.083,
            child: Text(
              'Agency member register',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.725,
            left: screenWidth * 0.678,
            child: Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(236, 109, 55, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.785,
            left: screenWidth * 0.787,
            child: Text(
              'Check',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(236, 109, 55, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.0875,
            left: screenWidth * 0.08,
            child: Container(
              width: screenWidth * 0.815,
              height: screenHeight * 0.24375,
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
