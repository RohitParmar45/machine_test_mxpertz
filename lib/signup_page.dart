import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register with Skenu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              TextFieldWidget(
                hintText: 'Username',
              ),
              SizedBox(height: 12),
              TextFieldWidget(
                hintText: 'Email',
              ),
              SizedBox(height: 12),
              TextFieldWidget(
                hintText: 'Password',
                isPassword: true,
              ),
              SizedBox(height: 12),
              TextFieldWidget(
                hintText: 'Confirm Password',
                isPassword: true,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: false, // You can handle the state of the checkbox
                    onChanged: (value) {
                      // Handle the state change
                    },
                  ),
                  Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle the registration logic
                  print('Register button pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white54,
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
