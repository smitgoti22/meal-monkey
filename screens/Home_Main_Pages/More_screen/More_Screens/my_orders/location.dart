import 'package:demo_app/meal_monkey/common_class/text.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../common_class/container.dart';
import '../../../../../componets/bottom_appbar.dart';
import '../../../../../componets/floating_action_button.dart';

class LocationChangeScreen extends StatefulWidget {
  const LocationChangeScreen({Key? key}) : super(key: key);

  @override
  State<LocationChangeScreen> createState() => _LocationChangeScreenState();
}

class _LocationChangeScreenState extends State<LocationChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left, color: Colors.black, size: 36),
          ),
          leadingWidth: 40,
          toolbarHeight: 100,
          title: Text(
            'Change Address',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade900),
          ),
          backgroundColor: Colors.white,
          elevation: 10,
          toolbarOpacity: 0.5,
          shadowColor: Colors.grey.withOpacity(0.3),
        ),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            /// location image
            SizedBox(
              height: 525,
              width: double.infinity,
              child: Image.asset('images/meal_monkey/Componets/location.png',
                  fit: BoxFit.cover),
            ),
            Expanded(
                child: CommonContainer(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              shadowColor: Colors.grey.withOpacity(0.7),
              spreadRadious: 5,
              blurRadious: 15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    /// Search address
                    const SizedBox(
                      height: 15,
                    ),
                    CommonTextfield(
                      hintText: "Search Address",
                      prefixicon: Icon(Icons.search),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    /// Choose a Saved Place
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Image.asset(
                            "images/meal_monkey/Componets/fillfav.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15,),
                        const CommonText(text: "Choose a saved place",color: Color(0xff4a4b4d),fontWeight: FontWeight.w400,size: 16),
                        const Spacer(),
                        const Icon(Icons.chevron_right_outlined,color: Color(0xff4a4b4d),)
                      ],
                    ),

                  ],
                ),
              ),
            ))
          ],
        ));;
  }
}
