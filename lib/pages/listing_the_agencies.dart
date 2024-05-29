import 'package:flutter/material.dart';
import 'package:crisisconnect/pages/Help_confirmation.dart'; // Ensure this path is correct

class ListingTheAgency extends StatefulWidget {
  const ListingTheAgency({super.key});

  @override
  _ListingTheAgencyState createState() => _ListingTheAgencyState();
}

class _ListingTheAgencyState extends State<ListingTheAgency> {
  List<String> services = [
    'Police Department',
    'Fire Department',
    'Disaster Relief Organization',
    'Ambulance Services',
  ];

  List<String> filteredServices = [];
  List<String> selectedServices = [];

  @override
  void initState() {
    super.initState();
    filteredServices = services;
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
            Positioned(
              top: screenHeight * 0.0425,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.9575,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.011,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.11625,
              left: screenWidth * 0.15,
              child: SizedBox(
                width: screenWidth * 0.6,
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
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        filteredServices = services
                            .where((service) => service
                                .toLowerCase()
                                .startsWith(value.toLowerCase()))
                            .toList();
                      });
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.2,
              left: screenWidth * 0.05,
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.7,
                child: ListView.builder(
                  itemCount: filteredServices.length,
                  itemBuilder: (context, index) {
                    final service = filteredServices[index];
                    return CheckboxListTile(
                      title: Text(
                        service,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      value: selectedServices.contains(service),
                      onChanged: (isChecked) {
                        setState(() {
                          if (isChecked!) {
                            selectedServices.add(service);
                          } else {
                            selectedServices.remove(service);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.1,
              left: screenWidth * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  // Debugging statement
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpConfirmation(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(1, 178, 125, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(
                    screenWidth * 0.8,
                    screenHeight * 0.07,
                  ),
                ),
                child: const Text(
                  'Confirm Services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
