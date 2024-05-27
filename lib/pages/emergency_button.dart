import 'package:crisisconnect/pages/listing_the_agencies.dart';
import 'package:flutter/material.dart';

class EmergencyButton extends StatelessWidget {
  const EmergencyButton({super.key});
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
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
              top: screenHeight * 0.071,
              left: -screenWidth * 0.26,
              child: Container(
                width: screenWidth * 1.52,
                height: screenHeight * 0.252,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(548, 202)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.101,
              left: screenWidth * 0.819,
              child: Container(
                width: screenWidth * 0.17,
                height: screenHeight * 0.06,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(61, 48)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.515,
              left: screenWidth * 0.23,
              child: Container(
                width: screenWidth * 0.52,
                height: screenHeight * 0.21375,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(1, 178, 125, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(186, 171)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.48875,
              left: screenWidth * 0.183,
              child: Container(
                width: screenWidth * 0.622,
                height: screenHeight * 0.265,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(1, 178, 125, 0.6),
                  borderRadius: BorderRadius.all(Radius.elliptical(224, 212)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.4675,
              left: screenWidth * 0.111,
              child: Container(
                width: screenWidth * 0.758,
                height: screenHeight * 0.30875,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(1, 178, 125, 0.44),
                  borderRadius: BorderRadius.all(Radius.elliptical(273, 247)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              left: screenWidth * 0.081,
              child: Text(
                'Emergency Help Needed?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: screenHeight * 0.035,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.5625,
              left: screenWidth * 0.344,
              child: SizedBox(
                width: screenWidth * 0.3,
                height: screenHeight * 0.11875,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListingTheAgency(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // No shadow
                  ).copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (states) => Colors.transparent,
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      'images/Phone.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),

            // Positioned(
            //   top: screenHeight * 0.101,
            //   left: screenWidth * 0.819,
            //   child: Container(
            //     width: screenWidth * 0.17,
            //     height: screenHeight * 0.06,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image:
            //             AssetImage('/images/Istockphoto1337144146612x6121.png'),
            //         fit: BoxFit.fitWidth,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.552,
              child: Text(
                'User123',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.101,
              left: screenWidth * 0.025,
              child: Container(
                width: screenWidth * 0.16,
                height: screenHeight * 0.06,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 217, 217, 0),
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
