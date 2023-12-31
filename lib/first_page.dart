import 'package:flutter/material.dart';
import 'package:machine_test_mxpertz/login_page.dart';
import 'package:machine_test_mxpertz/signup_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/background_mxpertz.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Login with email button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // Set button color
                    elevation: 3, // Set elevation
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Login with email',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
              ),

              // Add some space between buttons
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Register button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // Set button color
                    elevation: 3, // Set elevation
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
