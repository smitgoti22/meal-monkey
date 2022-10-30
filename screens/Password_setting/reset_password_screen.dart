import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              /// reset text
              const SizedBox(
                height: 45,
              ),
              const Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '\tPlease enter your email to receive a \nlink to create a new password via link',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 45,
              ),

              /// Email Textfield
               CommonTextfield(hintText: "Email"),
              const SizedBox(
                height: 25,
              ),

              /// Send Button
              CommonButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                },
                color: const Color(0xfffc6011),
                buttontext: 'Send',
                buttontextcolor: Colors.white,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
