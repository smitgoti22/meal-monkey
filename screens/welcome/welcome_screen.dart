import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Signup%20Login/choose_log_sign.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int newvalue = 0;
  late VoidCallback onDone;
  late PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: welcomepage.length,
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    newvalue = value;
                    _pageController = PageController(initialPage: value);
                  });
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),

                      /// Welcome Image
                      SizedBox(
                          height: 325,
                          child: Image.asset(welcomepage[index]['image'])),
                      const SizedBox(
                        height: 25,
                      ),

                      /// Dynamic Dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (cindex) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: cindex == index
                                        ? const Color(0xfffc6011)
                                        : Colors.grey,
                                  ),
                                )),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      /// title
                      Text(
                        welcomepage[index]['title'].toString(),
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),

                      /// Description
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          welcomepage[index]['Desc'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  );
                }),
          ),

          /// Next Button
          CommonButton(
            onTap: () {
              setState(() {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
                newvalue++;
                if (newvalue == welcomepage.length) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectLogSign(),
                      ));
                }
              });
            },
            color: const Color(0xfffc6011),
            buttontextcolor: Colors.white,
            buttontext: "Next",
          ),
          const SizedBox(
            height: 45,
          ),
        ],
      )),
    );
  }
}
