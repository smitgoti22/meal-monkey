import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:demo_app/meal_monkey/screens/Signup%20Login/signup_screen.dart';
import 'package:demo_app/meal_monkey/screens/Password_setting/reset_password_screen.dart';
import 'package:flutter/material.dart';

import '../Home_Main_Pages/homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              /// Login text
              const SizedBox(
                height: 55,
              ),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Add your details to login',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 25,
              ),

              /// Email and password Textfield
               CommonTextfield(hintText: 'Your email'),
               CommonTextfield(
                hintText: 'Password',
                obsecuretext: true,
              ),
              const SizedBox(
                height: 15,
              ),

              /// Login button
              CommonButton(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                },
                color: const Color(0xfffc6011),
                buttontext: "Login",
                buttontextcolor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),

              /// Forget Password
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  }
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ));
                },
                child: Text(
                  'Forget your password?',
                  style: TextStyle(
                      color: selected == true
                          ? Colors.blue
                          : Colors.grey.shade700.withOpacity(0.9)),
                ),
              ),
              const SizedBox(
                height: 45,
              ),

              /// Login with other social media accounts
              Text(
                'or login with',
                style: TextStyle(color: Colors.grey.shade700.withOpacity(0.9)),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 55,
                width: 346,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.transparent)),
                child: MaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    color: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 25,
                              child: Image.asset(
                                  'images/meal_monkey/pngegg (5).png')),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Login with Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 55,
                width: 346,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.transparent)),
                child: MaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30,
                              child: Image.asset(
                                  'images/meal_monkey/pngegg (4).png')),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Login with Google",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    )),
              ),
              const Spacer(),

              /// Sign up
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ));
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an Account?",
                        style: TextStyle(
                            color: Colors.grey.shade700.withOpacity(0.5),
                            fontWeight: FontWeight.w500),
                        children: const [
                      TextSpan(
                          text: " Sign up",
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
    ));
  }
}
