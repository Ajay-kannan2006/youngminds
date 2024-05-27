import 'package:flutter/material.dart';

class HelpConfirmation extends StatelessWidget {
  const HelpConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
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
              top: screenHeight * 0.018,
              left: screenWidth * 0.956,
              child: Container(
                width: screenWidth * 0.067,
                height: screenHeight * 0.031,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.819,
              child: Container(
                width: screenWidth * 0.053,
                height: screenHeight * 0.025,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.819,
              child: Container(
                width: screenWidth * 0.053,
                height: screenHeight * 0.025,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.744,
              child: Container(
                width: screenWidth * 0.061,
                height: screenHeight * 0.021,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.744,
              child: Container(
                width: screenWidth * 0.061,
                height: screenHeight * 0.021,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.024,
              left: screenWidth * 0.019,
              child: Text(
                '9:47',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.042,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.122,
              child: Text(
                ' AM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.042,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
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
                'Are you in an emergency ?',
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
            Positioned(
              top: screenHeight * 0.1,
              left: screenWidth * 0.819,
              child: Container(
                width: screenWidth * 0.169,
                height: screenHeight * 0.06,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Istockphoto1337144146612x6121.png'),
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
              top: screenHeight * 0.538,
              left: screenWidth * 0.345,
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
            Positioned(
              top: screenHeight * 0.11,
              left: screenWidth * 0.008,
              child: Container(
                width: screenWidth * 0.194,
                height: screenHeight * 0.051,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 0),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.808,
              left: screenWidth * 0.053,
              child: Container(
                width: screenWidth * 0.897,
                height: screenHeight * 0.077,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.82,
              left: screenWidth * 0.078,
              child: Container(
                width: screenWidth * 0.144,
                height: screenHeight * 0.063,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('/images/police.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.848,
              left: screenWidth * 0.297,
              child: Text(
                'Police Force',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.036,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.848,
              left: screenWidth * 0.792,
              child: Text(
                'Active',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color.fromRGBO(22, 57, 242, 1),
                  fontFamily: 'Inter',
                  fontSize: screenWidth * 0.036,
                  letterSpacing: 0,
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
