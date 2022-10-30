import 'package:flutter/material.dart';

import '../../common_class/button.dart';
import '../../common_class/textfield.dart';
import 'new_password_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                'We have Sent an OTP to\n\t\t\t\t\t\t\t\t\tyour Mobile',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '\tPlease check your Mobile 99******28 \n\t\t\t\t\tcontinue to reset your password',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 45,
              ),

              /// Enter OTP number text fieald
              Row(
                children: List.generate(
                    4,
                    (index) => Container(
                        height: 55,
                        width: 75,
                        padding: EdgeInsets.zero,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child:  CommonTextfield(hintText: "*",borderradious: 15,hintTextSize: 19,))),
              ),
              const SizedBox(
                height: 25,
              ),

              /// Next Button
              CommonButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPasswordScreen(),));
                },
                color: const Color(0xfffc6011),
                buttontext: 'Next',
                buttontextcolor: Colors.white,
              ),
              SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                      text: "Didn't Recieve?",
                      style: TextStyle(
                          color: Colors.grey.shade700.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                      children: const [
                        TextSpan(
                            text: " Click here",
                            style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w700))
                      ])),
            ]),
          ),
        ),
      ),
    );
  }
}
