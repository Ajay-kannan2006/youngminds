import 'package:flutter/material.dart';

class UserSignUp extends StatelessWidget {
  const UserSignUp({super.key});

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
            //whiteBackground
            Positioned(
              top: screenHeight * 0.332,
              left: -screenWidth * 0.48,
              child: Container(
                width: screenWidth * 1.91,
                height: screenHeight * 0.83,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(689, 664)),
                ),
              ),
            ),
            //phoneno text
            Positioned(
              top: screenHeight * 0.43,
              left: screenWidth * 0.11,
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
            //Phone no text field
            Positioned(
              top: screenHeight * 0.46,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(1, 178, 125, 1),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.013,
                        horizontal: screenWidth * 0.03),
                    prefixIcon: const Icon(
                      Icons.email, // Choose the appropriate icon
                      color: Color.fromRGBO(
                          1, 178, 125, 1), // Match the border color
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.53,
              left: screenWidth * 0.11,
              child: const Text(
                'User Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.63),
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            //User Name textfield
            Positioned(
              top: screenHeight * 0.56,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(1, 178, 125, 1),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.013,
                        horizontal: screenWidth * 0.03),
                    prefixIcon: const Icon(
                      Icons.person, // Choose the appropriate icon
                      color: Color.fromRGBO(
                          1, 178, 125, 1), // Match the border color
                    ),
                  ),
                ),
              ),
            ),
            //confirm Password
            Positioned(
              top: screenHeight * 0.63,
              left: screenWidth * 0.11,
              child: const Text(
                'Confirm Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.63),
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.66,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(1, 178, 125, 1),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.013,
                        horizontal: screenWidth * 0.03),
                    prefixIcon: const Icon(
                      Icons.lock, // Choose the appropriate icon
                      color: Color.fromRGBO(
                          1, 178, 125, 1), // Match the border color
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.77,
              left: screenWidth * 0.09,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0, // No shadow
                ).copyWith(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (states) => Colors.transparent,
                  ),
                ),
                child: Container(
                  width: screenWidth * 0.71,
                  height: screenHeight * 0.055,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(1, 178, 125, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up', // Add your desired text here
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20, // Text size
                        fontWeight: FontWeight.bold, // Text weight
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.87,
              left: screenWidth * 0.12,
              child: const Text(
                'Already have an Account ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(5, 152, 47, 1),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.851,
              left: screenWidth * 0.72,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0, // No shadow
                ).copyWith(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (states) => Colors.transparent,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(236, 109, 55, 1),
                      fontFamily: 'Inter',
                      fontSize: 20,
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
              top: screenHeight * 0.09,
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
                    size: 30,
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
