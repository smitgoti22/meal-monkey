import 'package:flutter/material.dart';

import '../screens/Home_Main_Pages/homepage.dart';
import 'bottom_appbar.dart';

class CustomFloatingButton extends StatefulWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  State<CustomFloatingButton> createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          curruntscreen = const HomeScreen();
          track_screen = 5;
        });
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      },
      backgroundColor: track_screen == 5
          ? const Color(0xfffc6011)
          : Colors.grey,
      child: const Icon(Icons.home),
    );
  }
}
