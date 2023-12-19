import 'package:flutter/material.dart';
import 'package:machine_test_mxpertz/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_mxpertz.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 350.0,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
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
                        SizedBox(height: 10.0),
                        const GlowingTextField(
                          hintText: 'Password',
                          prefixIcon: Icons.lock,
                          obscureText: true,
                        ),
                        const SizedBox(height: 12.0),
                        Container(
                          width: double.infinity,
                          height: 40,
                          margin: const EdgeInsets.only(
                              left: 2, right: 2, bottom: 12.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: const Text(
                                'LOG IN',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Forgot Password pressed');
                          },
                          child: const Text(
                            'Forgot Password',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
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
      style: const TextStyle(fontSize: 12.0),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.yellow),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
        ),
      ),
    );
  }
}
