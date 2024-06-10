import 'package:flutter/material.dart';
import 'package:crisisconnect/pages/start_page.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

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
            Positioned(
              top: screenHeight * 0.390,
              left: -screenWidth * 0.46,
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
              left: screenWidth * 0.198,
              child: const Text(
                'NO ALERT',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(1, 178, 125, 1),
                  fontFamily: 'Inter',
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.63,
              left: screenWidth * 0.098,
              child: const Text(
                'NO EMERGENCY IN YOUR NEARBY AREAS',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1,
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
              top: screenHeight * 0.04,
              right: screenWidth * 0.05,
              child: IconButton(
                icon: const Icon(Icons.logout, color: Colors.white),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const StartPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(1, 178, 125, 1),
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'HELP',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }
}
