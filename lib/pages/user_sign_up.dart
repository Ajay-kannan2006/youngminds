import 'package:crisisconnect/pages/userlogin.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  _UserSignUpState createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    // Validate input fields
    if (emailController.text.isEmpty ||
        usernameController.text.isEmpty ||
        passwordController.text.isEmpty) {
      showAlertDialog(
          context, 'Validation Error', 'Please fill in all fields.');
      return;
    }

    if (!isValidEmail(emailController.text)) {
      showAlertDialog(
          context, 'Validation Error', 'Please enter a valid email address.');
      return;
    }

    if (passwordController.text.length < 6) {
      showAlertDialog(context, 'Validation Error',
          'Password should be at least 6 characters.');
      return;
    }

    try {
      // Check if the email or username already exists in both 'users' and 'agency' collections
      bool emailExists = await checkIfEmailExists(emailController.text);
      bool usernameExists =
          await checkIfUsernameExists(usernameController.text);

      if (emailExists) {
        showAlertDialog(context, 'Validation Error', 'Email already exists.');
        return;
      }

      if (usernameExists) {
        showAlertDialog(
            context, 'Validation Error', 'Username already exists.');
        return;
      }

      // Create user with email and password
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Store user details in Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'username': usernameController.text,
        'email': emailController.text,
      });

      print("User signed up and details stored in Firestore");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showAlertDialog(context, 'Weak Password',
            'Password should be at least 6 characters.');
      } else {
        showAlertDialog(
            context, 'Sign Up Error', 'An error occurred: ${e.message}');
      }
    } catch (e) {
      showAlertDialog(
          context, 'Sign Up Error', 'An unexpected error occurred.');
    }
  }

  Future<bool> checkIfEmailExists(String email) async {
    // Check 'users' collection
    var userSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();

    // Check 'agency' collection
    var agencySnapshot = await FirebaseFirestore.instance
        .collection('agency')
        .where('email', isEqualTo: email)
        .get();

    return userSnapshot.docs.isNotEmpty || agencySnapshot.docs.isNotEmpty;
  }

  Future<bool> checkIfUsernameExists(String username) async {
    // Check 'users' collection
    var userSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('username', isEqualTo: username)
        .get();

    // Check 'agency' collection
    var agencySnapshot = await FirebaseFirestore.instance
        .collection('agency')
        .where('username', isEqualTo: username)
        .get();

    return userSnapshot.docs.isNotEmpty || agencySnapshot.docs.isNotEmpty;
  }

  bool isValidEmail(String email) {
    // Simple email validation, you can implement more complex validation if needed
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

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
            // Phone no / Email id Label
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
            // Email TextField
            Positioned(
              top: screenHeight * 0.46,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  controller: emailController,
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
                      Icons.email,
                      color: Color.fromRGBO(1, 178, 125, 1),
                    ),
                  ),
                ),
              ),
            ),
            // User Name Label
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
            // User Name TextField
            Positioned(
              top: screenHeight * 0.56,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  controller: usernameController,
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
                      Icons.person,
                      color: Color.fromRGBO(1, 178, 125, 1),
                    ),
                  ),
                ),
              ),
            ),
            // Confirm Password Label
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
            // Password TextField
            Positioned(
              top: screenHeight * 0.66,
              left: screenWidth * 0.12,
              child: SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.051,
                child: TextField(
                  controller: passwordController,
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
                      Icons.lock,
                      color: Color.fromRGBO(1, 178, 125, 1),
                    ),
                  ),
                ),
              ),
            ),
            // Sign Up Button
            Positioned(
              top: screenHeight * 0.77,
              left: screenWidth * 0.09,
              child: ElevatedButton(
                onPressed: signUp,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Already have an Account Label
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
            // Log In Button
            Positioned(
              top: screenHeight * 0.851,
              left: screenWidth * 0.72,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserLogin(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ).copyWith(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (states) => Colors.transparent,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(226, 11, 11, 1),
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
