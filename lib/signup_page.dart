import 'package:flutter/material.dart';
import 'package:machine_test_mxpertz/curved/curved_app_bar.dart';
import 'package:machine_test_mxpertz/main_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: AppBar(
            title: Text(
              'Register with Skenu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.yellow,
            elevation: 0, // Remove the shadow
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // Remove the color from here
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                const TextFieldWidget(
                  hintText: 'Username',
                  hintColor: Colors.white,
                  textColor: Colors.white,
                ),
                SizedBox(height: 12),
                const TextFieldWidget(
                  hintText: 'Email',
                  hintColor: Colors.white,
                  textColor: Colors.white,
                ),
                SizedBox(height: 12),
                const TextFieldWidget(
                  hintText: 'Password',
                  isPassword: true,
                  hintColor: Colors.white,
                  textColor: Colors.white,
                ),
                SizedBox(height: 12),
                const TextFieldWidget(
                  hintText: 'Confirm Password',
                  hintColor: Colors.white,
                  textColor: Colors.white,
                  isPassword: true,
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      fillColor: MaterialStateProperty.all(Colors.grey),
                      checkColor: Colors.grey, // Color of the check icon
                      activeColor: Colors.grey, // Color of the checkbox border
                    ),
                    const Text(
                      'Agree to terms and conditions',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // Set the background color of the Scaffold
      backgroundColor: const Color.fromARGB(255, 1, 41, 74),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final Color hintColor;
  final Color textColor;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    required this.hintColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      style: TextStyle(
        color: textColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        filled: true,
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
