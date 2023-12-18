import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/background_mxpertz.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0), // Adjust padding
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Sign in to your account',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 50.0),
                    const GlowingTextField(
                      hintText: 'Email',
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 10.0), // Adjust height
                    const GlowingTextField(
                      hintText: 'Password',
                      prefixIcon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(height: 12.0),
                    Container(
                      width: double.infinity,
                      height: 40, // Adjust height
                      margin: const EdgeInsets.only(
                          left: 2, right: 2, bottom: 12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                          print('Login button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Set button color
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            'LOG IN',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.yellow, // Set text color
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add your "Forgot Password" logic here
                        print('Forgot Password pressed');
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GlowingTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  const GlowingTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(fontSize: 12.0), // Adjust font size
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust border radius
          borderSide: const BorderSide(color: Colors.yellow), // Yellow border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust border radius
          borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
        ),
      ),
    );
  }
}
