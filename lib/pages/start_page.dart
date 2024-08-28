import 'package:crisisconnect/pages/agency_sign_up.dart';
import 'package:crisisconnect/pages/listing_the_agencies.dart';
import 'package:crisisconnect/pages/user_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:permission_handler/permission_handler.dart'; // Import permission_handler package

class StartPage extends StatelessWidget {
  const StartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Future<void> _startButtonPressed(BuildContext context) async {
      try {
        // Request location permission first
        bool isLocationPermissionGranted = await requestLocationPermission();
        if (!isLocationPermissionGranted)
          return; // Permission not granted, exit

        // Get current user location
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        // Store location in Firebase
        await FirebaseFirestore.instance.collection('user_locations').add({
          'latitude': position.latitude,
          'longitude': position.longitude,
          // Add more data if needed
        });

        // Navigate to the next screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ListingTheAgency(),
          ),
        );
      } catch (e) {
        print("Error getting location: $e");
        // Handle error
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: screenHeight * 0.375,
            left: -screenWidth * 0.47,
            child: Container(
              width: screenWidth * 1.94,
              height: screenHeight * 0.83,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(689, 664)),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.5525,
            left: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth * 0.816,
              height: screenHeight * 0.07,
              child: ElevatedButton(
                onPressed: () => _startButtonPressed(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(screenWidth * 0.816, screenHeight * 0.07),
                ),
                child: Text(
                  'START',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: screenHeight * 0.03,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.655,
            left: screenWidth * 0.46,
            child: Text(
              'OR',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(0, 0, 0, 0.39),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.725,
            left: screenWidth * 0.144,
            child: Text(
              'Create an Account',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.7825,
            left: screenWidth * 0.083,
            child: Text(
              'Agency member register',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(5, 152, 47, 1),
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.715,
            left: screenWidth * 0.678,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserSignUp(),
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
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(236, 109, 55, 1),
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.775,
            left: screenWidth * 0.727,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AgencySignUp(),
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
              child: Text(
                'Check',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(236, 109, 55, 1),
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.normal,
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
        ],
      ),
    );
  }

  // Function to request location permission
  Future<bool> requestLocationPermission() async {
    final permissionStatus = await Permission.location.request();
    return permissionStatus == PermissionStatus.granted;
  }
}
