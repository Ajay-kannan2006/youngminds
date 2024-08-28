import 'package:crisisconnect/pages/agency_login.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AgencySignUp extends StatefulWidget {
  const AgencySignUp({super.key});

  @override
  _AgencySignUpState createState() => _AgencySignUpState();
}

class _AgencySignUpState extends State<AgencySignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController agencyNameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  String? agencyType;

  final List<String> allowedTypes = [
    'Doctor',
    'Police',
    'Fireforce',
    'Ambulance',
    'Other',
    'Hospital',
    'Government Agency',
    'Non-profit Organization',
    'Animal Control',
    'Utility Services',
    'Construction Company',
    'Security Services'
  ];

  void signUp() async {
    final email = emailController.text;
    final username = usernameController.text;
    final confirmPassword = confirmPasswordController.text;
    final agencyName = agencyNameController.text;
    final position = positionController.text;
    final contactNumber = contactNumberController.text;
    final city = cityController.text;
    final district = districtController.text;
    final state = stateController.text;
    final pincode = pincodeController.text;

    if (email.isEmpty ||
        username.isEmpty ||
        confirmPassword.isEmpty ||
        agencyType == null ||
        agencyName.isEmpty ||
        position.isEmpty ||
        contactNumber.isEmpty ||
        city.isEmpty ||
        district.isEmpty ||
        state.isEmpty ||
        pincode.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('agency').add({
        'email': email,
        'username': username,
        'confirmPassword': confirmPassword,
        'agencyType': agencyType,
        'agencyName': agencyName,
        'position': position,
        'contactNumber': contactNumber,
        'city': city,
        'district': district,
        'state': state,
        'pincode': pincode,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign Up Successful')),
      );
      // Navigate to another page if necessary
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to sign up: $e')),
      );
    }
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
        child: ListView(
          children: <Widget>[
            Container(
              height: screenHeight * 0.3,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/UNITED.gif'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Phone no / Email id',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.56),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
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
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'User Name',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
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
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: confirmPasswordController,
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
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Agency Type',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.56),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  DropdownButtonFormField<String>(
                    value: agencyType,
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
                      prefixIcon: const Icon(
                        Icons.business,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                    items: allowedTypes.map((type) {
                      return DropdownMenuItem(
                        value: type,
                        child: Text(type),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        agencyType = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Agency Name',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: agencyNameController,
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
                      prefixIcon: const Icon(
                        Icons.business,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Your Position',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: positionController,
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
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Your Agency contact number',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: contactNumberController,
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
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'City',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.56),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: cityController,
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
                      prefixIcon: const Icon(
                        Icons.location_city,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'District',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: districtController,
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
                      prefixIcon: const Icon(
                        Icons.location_city,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'State',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: stateController,
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
                      prefixIcon: const Icon(
                        Icons.location_city,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Pincode',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.63),
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: pincodeController,
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
                      prefixIcon: const Icon(
                        Icons.pin_drop,
                        color: Color.fromRGBO(1, 178, 125, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AgencyLogin(),
                            ),
                          );
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
