import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

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
              top: screenHeight * 0.07,
              left: -screenWidth * 0.26,
              child: Container(
                width: screenWidth * 1.52,
                height: screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                      screenWidth * 1.52, screenHeight * 0.25)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.1,
              left: screenWidth * 0.82,
              child: Container(
                width: screenWidth * 0.17,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                      screenWidth * 0.17, screenHeight * 0.06)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.56,
              left: screenWidth * 0.345,
              child: Container(
                width: screenWidth * 0.3,
                height: screenHeight * 0.118,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/images/Phone.png'),
                    fit: BoxFit.fitWidth,
                  ),
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
              top: screenHeight * 0.376,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.334,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(
                    color: const Color.fromRGBO(1, 178, 125, 1),
                    width: 1.5,
                  ),
                  image: const DecorationImage(
                    image:
                        AssetImage('/images/Whatsappimage20240511at9011.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.71,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.29,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.914,
              left: screenWidth * 0.058,
              child: Container(
                width: screenWidth * 0.194,
                height: screenHeight * 0.043,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.069),
                  color: const Color.fromRGBO(22, 57, 242, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.914,
              left: screenWidth * 0.33,
              child: Container(
                width: screenWidth * 0.314,
                height: screenHeight * 0.043,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.069),
                  color: const Color.fromRGBO(236, 109, 55, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.914,
              left: screenWidth * 0.706,
              child: Container(
                width: screenWidth * 0.225,
                height: screenHeight * 0.043,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.069),
                  color: const Color.fromRGBO(22, 57, 242, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.92,
              left: screenWidth * 0.1,
              child: Text(
                'Call',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.056,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.92,
              left: screenWidth * 0.36,
              child: Text(
                'Message',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.056,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.92,
              left: screenWidth * 0.74,
              child: Text(
                'Voice',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.056,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.84,
              left: screenWidth * 0.284,
              child: Text(
                'Police Force',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(236, 109, 55, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.033,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.84,
              left: screenWidth * 0.467,
              child: Text(
                'Active',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(22, 57, 242, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.033,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.011,
              child: TextButton(
                // Change from Positioned to TextButton
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous page
                },
                child: const RotationTransition(
                  turns: AlwaysStoppedAnimation(0),
                  child: Icon(
                    Icons.arrow_back, // Change from SvgPicture to Icon
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
