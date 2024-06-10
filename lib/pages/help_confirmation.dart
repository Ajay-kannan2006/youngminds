import 'package:crisisconnect/pages/map_page.dart';
import 'package:flutter/material.dart';

class HelpConfirmation extends StatelessWidget {
  final List<String> selectedServices;

  const HelpConfirmation({super.key, required this.selectedServices});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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
              top: screenHeight * 0.155,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.8,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.071,
              left: -screenWidth * 0.261,
              child: Container(
                width: screenWidth * 1.522,
                height: screenHeight * 0.252,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                        screenWidth * 1.522, screenHeight * 0.252),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.115,
              left: screenWidth * 0.79,
              child: Container(
                width: screenWidth * 0.1694,
                height: screenHeight * 0.06,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(61, 48)),
                ),
              ),
            ), //userprofilepic
            Positioned(
              top: screenHeight * 0.469,
              left: screenWidth * 0.225,
              child: Container(
                width: screenWidth * 0.517,
                height: screenHeight * 0.214,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(1, 178, 125, 1),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                        screenWidth * 0.517, screenHeight * 0.214),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.442,
              left: screenWidth * 0.178,
              child: Container(
                width: screenWidth * 0.622,
                height: screenHeight * 0.266,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(1, 178, 125, 0.6000000238418579),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                        screenWidth * 0.622, screenHeight * 0.266),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.42,
              left: screenWidth * 0.106,
              child: Container(
                width: screenWidth * 0.758,
                height: screenHeight * 0.31,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(1, 178, 125, 0.4399999976158142),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(screenWidth * 0.758, screenHeight * 0.31),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.292,
              left: screenWidth * 0.053,
              child: Text(
                'Are you in an emergency?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.079,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            const Positioned(
              top: 165,
              left: 328,
              child: Text(
                'User123',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.538,
              left: screenWidth * 0.290,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MapPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0, // No shadow
                ).copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => Colors.transparent,
                  ),
                ),
                child: Text(
                  'Help',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Inter',
                    fontSize: screenWidth * 0.143,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11,
              left: screenWidth * 0.011,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous page
                },
                child: const Icon(
                  Icons.arrow_back, // Change from SvgPicture to Icon
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.75,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color.fromRGBO(1, 178, 125, 1),
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Selected Services:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(9.0),
                        itemCount: selectedServices.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            selectedServices[index],
                            style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Inter',
                              fontSize: screenWidth * 0.046,
                              letterSpacing: 1,
                              fontWeight: FontWeight.normal,
                              height: 1.2,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
