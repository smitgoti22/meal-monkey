import 'package:demo_app/meal_monkey/screens/Signup%20Login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../common_class/button.dart';
import '../../common_class/textfield.dart';
import '../Home_Main_Pages/homepage.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    /// Sign up text
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Add your details to Sign Up',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      height: 45,
                    ),

                    /// Email and password Textfield
                     CommonTextfield(hintText: 'Name'),
                    const SizedBox(
                      height: 10,
                    ),
                     CommonTextfield(hintText: 'Email'),
                    const SizedBox(
                      height: 10,
                    ),
                     CommonTextfield(hintText: 'Mobile No'),
                    const SizedBox(
                      height: 10,
                    ),
                     CommonTextfield(hintText: 'Address'),
                    const SizedBox(
                      height: 10,
                    ),
                     CommonTextfield(
                        hintText: 'Password', obsecuretext: true),
                    const SizedBox(
                      height: 10,
                    ),
                     CommonTextfield(
                        hintText: 'Confirm Password', obsecuretext: true),
                    const SizedBox(
                      height: 15,
                    ),

                    /// Sign up button
                    CommonButton(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      },
                      color: const Color(0xfffc6011),
                      buttontext: "Sign Up",
                      buttontextcolor: Colors.white,
                    ),
                    const SizedBox(
                      height: 55,
                    ),

                    /// Login
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      child: RichText(
                          text: TextSpan(
                              text: "Already have an Account?",
                              style: TextStyle(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  fontWeight: FontWeight.w500),
                              children: const [
                            TextSpan(
                                text: " Login",
                                style: TextStyle(color: Colors.orange))
                          ])),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
