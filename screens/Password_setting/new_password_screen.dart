import 'package:demo_app/meal_monkey/screens/Signup%20Login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../common_class/button.dart';
import '../../common_class/textfield.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              /// new password text
              const SizedBox(
                height: 45,
              ),
              const Text(
                'New Password',
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
                height: 35,
              ),

              /// Password Textfield
               CommonTextfield(hintText: "Password",obsecuretext: true),
              const SizedBox(
                height: 5,
              ),
               CommonTextfield(hintText: "Confirm Password",obsecuretext: true),
              const SizedBox(
                height: 15,
              ),

              /// Send Button
              CommonButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                color: const Color(0xfffc6011),
                buttontext: 'Done',
                buttontextcolor: Colors.white,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
