import 'package:demo_app/meal_monkey/screens/Signup%20Login/login_screen.dart';
import 'package:demo_app/meal_monkey/screens/Signup%20Login/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../common_class/button.dart';

class SelectLogSign extends StatefulWidget {
  const SelectLogSign({Key? key}) : super(key: key);

  @override
  State<SelectLogSign> createState() => _SelectLogSignState();
}

class _SelectLogSignState extends State<SelectLogSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          return Future.value(false   );
        },
        child: Center(
          child: Column(children: [
            Stack(
              children: [
                Image.asset(
                  "images/meal_monkey/Organe top shape.png",
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "images/meal_monkey/Logo.png",
                    height: 120,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              '\t\t\tDiscover the best foods from over 1000 \nrestaurants and fast delivery to your doorstep ',
              style: TextStyle(color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 75,
            ),
            CommonButton(
              color: Color(0xfffc6011),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
              },
              buttontext: "Login",
              buttontextcolor: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            CommonButton(
              color: Colors.white,
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
              },
              bordercolor: const Color(0xfffc6011),
              buttontext: "Create an Account",
              buttontextcolor: Color(0xfffc6011),
            ),
          ]),
        ),
      ),
    );
  }
}
