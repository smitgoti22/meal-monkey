import 'package:demo_app/meal_monkey/common_class/text.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:demo_app/meal_monkey/componets/switch_button.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/payment_details.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/homepage.dart';
import 'package:flutter/material.dart';

import '../common_class/button.dart';

bool _switchValue = false;

void bottomsheet(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Add Credit/Debit Card,
                      Text(
                        'Add Credit/Debit Card',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade900),
                      ),

                      /// Close button
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 20,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey.shade900.withOpacity(0.1),
                    thickness: 1,
                  ),

                  /// Card Details
                  const SizedBox(
                    height: 15,
                  ),
                  CommonTextfield(hintText: 'Card Number'),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /// EXPIRY
                      Text(
                        'Expiry',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade900),
                      ),

                      /// DATE
                      SizedBox(
                          height: 55,
                          width: 100,
                          child: CommonTextfield(hintText: 'MM')),
                      SizedBox(
                          height: 55,
                          width: 100,
                          child: CommonTextfield(hintText: 'YY')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonTextfield(hintText: 'Security Code'),
                  CommonTextfield(hintText: 'First Name'),
                  CommonTextfield(hintText: 'Last Name'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'You can remove this card\nat anytime ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      SwitchButton(
                        switchvalue: _switchValue,
                        valueChanged: (value) {
                          _switchValue = value;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: CommonButton(
                    color: const Color(0xfffc6011),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    buttontext: "+  Add Card",
                    buttontextcolor: Colors.white,
                    fontsize: 16,
                  ))
                ],
              ),
            ),
          ));
}
void thanksbottomsheet(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    /// close button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        /// Close button
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.close,
                              size: 20,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    /// thanks image
                    SizedBox(
                      height: 215,
                      child: Image.asset(
                          "images/meal_monkey/Componets/thanks.png"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    /// thank you text
                    const CommonText(
                        text: "Thank You!",
                        size: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4a4b4d)),
                    const SizedBox(
                      height: 5,
                    ),
                     const CommonText(
                        text: "for your order",
                        size: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4a4b4d)),
                    const SizedBox(height: 15,),
                    const Center(
                        child: CommonText(
                            text:
                                "Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order",
                            size: 14,
                            fontWeight: FontWeight.w400,
                            maxlines: 5,
                            textalign: TextAlign.center,
                            color: Color(0xff4a4b4d))),
                    const SizedBox(height: 35,),

                    /// track my order
                    CommonButton(
                      color: const Color(0xfffc6011),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttontext: "Track My Order",
                      buttontextcolor: Colors.white,
                      fontsize: 16,
                    ),
                    const SizedBox(height: 15,),

                    /// back to my home
                    CommonButton(
                      color: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttontext: "Back to Home",
                      buttontextcolor: Colors.black,
                      fontsize: 16,
                    ),
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
          ));
}
