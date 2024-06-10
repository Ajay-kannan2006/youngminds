import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(1, 178, 125, 1),
        ),
        child: Stack(
          children: <Widget>[
            // White Background
            Positioned(
              top: screenHeight * 0.404,
              left: -screenWidth * 0.475,
              child: Container(
                width: screenWidth * 1.91,
                height: screenHeight * 0.83,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(689, 664)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.53,
              left: screenWidth * 0.12,
              child: const Text(
                'Phone no / Email id',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.56),
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.556,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.621,
              left: screenWidth * 0.12,
              child: const Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.56),
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.648,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.767,
              left: screenWidth * 0.12,
              child: Container(
                width: screenWidth * 0.76,
                height: screenHeight * 0.055,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
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
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.011,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const RotationTransition(
                  turns: AlwaysStoppedAnimation(0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
