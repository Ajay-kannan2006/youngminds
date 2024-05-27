import 'package:crisisconnect/pages/Help_confirmation.dart';
import 'package:flutter/material.dart';

class ListingTheAgency extends StatelessWidget {
  const ListingTheAgency({super.key});

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
              top: screenHeight * 0.1125,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.8425,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05625,
              left: -screenWidth * 0.2,
              child: Container(
                width: screenWidth * 1.4,
                height: screenHeight * 0.2725,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(503, 218)),
                ),
              ),
            ),
            // Positioned(
            //   top: screenHeight * 0.0175,
            //   left: screenWidth * 0.9528,
            //   child: Container(
            //     width: screenWidth * 0.0667,
            //     height: screenHeight * 0.03125,
            //     decoration: const BoxDecoration(
            //       color: Color.fromRGBO(255, 255, 255, 1),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: screenHeight * 0.02,
            //   left: screenWidth * 0.8167,
            //   child: Container(
            //     width: screenWidth * 0.0528,
            //     height: screenHeight * 0.025,
            //     decoration: const BoxDecoration(
            //       color: Color.fromRGBO(255, 255, 255, 1),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: screenHeight * 0.02,
            //   left: screenWidth * 0.7417,
            //   child: Container(
            //     width: screenWidth * 0.0611,
            //     height: screenHeight * 0.02125,
            //     decoration: const BoxDecoration(
            //       color: Color.fromRGBO(255, 255, 255, 1),
            //     ),
            //   ),
            // ),
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
              top: screenHeight * 0.115,
              left: screenWidth * 0.8444,
              child: Container(
                width: screenWidth * 0.1694,
                height: screenHeight * 0.06,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('images/Istockphoto1337144146612x6122.png'),
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
            ), //username
            Positioned(
              top: screenHeight * 0.31125,
              left: screenWidth * 0.0639,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpConfirmation(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(1, 178, 125, 1), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(
                    screenWidth * 0.8722,
                    screenHeight * 0.0775,
                  ),
                ),
                child: const Text(
                  '',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 16, // Text size
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.415,
              left: screenWidth * 0.0639,
              child: Container(
                width: screenWidth * 0.8722,
                height: screenHeight * 0.0775,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.51375,
              left: screenWidth * 0.0639,
              child: Container(
                width: screenWidth * 0.8722,
                height: screenHeight * 0.0775,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.615,
              left: screenWidth * 0.0639,
              child: Container(
                width: screenWidth * 0.8722,
                height: screenHeight * 0.0775,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.71625,
              left: screenWidth * 0.0639,
              child: Container(
                width: screenWidth * 0.8722,
                height: screenHeight * 0.0775,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.8175,
              left: screenWidth * 0.0639,
              child: Container(
                width: screenWidth * 0.8722,
                height: screenHeight * 0.0775,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(1, 178, 125, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.42125,
              left: screenWidth * 0.0917,
              child: Container(
                width: screenWidth * 0.1389,
                height: screenHeight * 0.0589625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/Fireagency.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              left: screenWidth * 0.1167,
              child: Container(
                width: screenWidth * 0.0861,
                height: screenHeight * 0.02375,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.31875,
              left: screenWidth * 0.0778,
              child: Container(
                width: screenWidth * 0.1667,
                height: screenHeight * 0.0625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/doctor.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.625,
              left: screenWidth * 0.0889,
              child: Container(
                width: screenWidth * 0.1417,
                height: screenHeight * 0.0575,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/police.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.5225,
              left: screenWidth * 0.0944,
              child: Container(
                width: screenWidth * 0.1389,
                height: screenHeight * 0.05875,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/navy.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.72375,
              left: screenWidth * 0.0944,
              child: Container(
                width: screenWidth * 0.1389,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/police.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.82375,
              left: screenWidth * 0.0917,
              child: Container(
                width: screenWidth * 0.1389,
                height: screenHeight * 0.0589625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/Add.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.625,
              left: screenWidth * 0.3833,
              child: const Text(
                'POLICE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.42125,
              left: screenWidth * 0.3833,
              child: const Text(
                'FIREMAN',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.5225,
              left: screenWidth * 0.3806,
              child: const Text(
                'MAILMAN',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.725,
              left: screenWidth * 0.3861,
              child: const Text(
                'POLICE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.82375,
              left: screenWidth * 0.3889,
              child: const Text(
                'MAILMAN',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.32,
              left: screenWidth * 0.3806,
              child: const Text(
                'DOCTOR',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.0425,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 1),
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
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.15, // Adjust the left position as needed
              child: SizedBox(
                width: screenWidth * 0.6, // Adjust the width as needed
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromRGBO(1, 178, 125, 1),
                      width: 1.0,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: screenHeight * 0.02,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      // Handle text changes here
                    },
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
