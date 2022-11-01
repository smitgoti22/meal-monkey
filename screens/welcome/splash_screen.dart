import 'dart:async';

import 'package:demo_app/meal_monkey/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: SizedBox(height: 150,child: Image.asset("images/meal_monkey/Logo.png"),)),
    );
  }
}
