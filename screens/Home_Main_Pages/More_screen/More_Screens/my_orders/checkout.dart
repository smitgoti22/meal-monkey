import 'dart:ffi';

import 'package:demo_app/meal_monkey/common_class/container.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/my_orders/location.dart';
import 'package:flutter/material.dart';

import '../../../../../common_class/button.dart';
import '../../../../../common_class/text.dart';
import '../../../../../componets/bottom_appbar.dart';
import '../../../../../componets/floating_action_button.dart';
import '../../../../../componets/model_bottom_sheet.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int groupvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left, color: Colors.black),
          ),
          leadingWidth: 40,
          toolbarHeight: 55,
          title: Text(
            'Checkout',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade900),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                splashRadius: 25,
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.grey.shade900,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBar: const CustomBottomAppbar(),
        floatingActionButton: CustomFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              /// Location
              CommonContainer(
                height: 105,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                          CommonText(
                              text: "Delivery Address",
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          CommonText(
                              text: "653 Nostrand Ave.,\nBrooklyn, NY 11216",
                              size: 14,
                              maxlines: 2,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LocationChangeScreen(),));
                        },
                        child: const Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xfffc6011),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// Payment Method
              CommonContainer(
                height: 285,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           CommonText(
                              text: "Payment method",
                              size: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          GestureDetector(
                            onTap: () {
                              bottomsheet(context);
                            },
                            child:  CommonText(
                                text: "+ Add Card",
                                size: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xfffc6011)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                          children: List.generate(
                              3,
                              (index) => CommonContainer(
                                    height: 55,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    width: double.infinity,
                                    color: Colors.grey.withOpacity(0.07),
                                    borderwidth: 1,
                                    bordercolor: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          (index == 1 || index == 2)
                                              ? SizedBox(
                                                  height: 22,
                                                  child: Image.asset(
                                                    paymentMethod[index]
                                                        ['image'],
                                                    fit: BoxFit.cover,
                                                  ))
                                              : CommonText(text: ""),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          CommonText(
                                              text: paymentMethod[index]
                                                  ['title']),
                                          const Spacer(),
                                          Radio(
                                            value: groupvalue,
                                            groupValue: index,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = index;
                                              });
                                            },
                                            activeColor:
                                                const Color(0xfffc6011),
                                            hoverColor: Colors.orange,
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    const Color(0xfffc6011)),
                                          )
                                        ],
                                      ),
                                    ),
                                  )))
                    ],
                  ),
                ),
              ),

              /// Subtotal, total ...
              const SizedBox(
                height: 15,
              ),
              CommonContainer(
                height: 165,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          CommonText(
                              text: "Sub Total",
                              size: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          CommonText(
                            text: "\$68",
                            size: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          CommonText(
                              text: "Delivery Cost",
                              size: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          CommonText(
                            text: "\$2",
                            size: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          CommonText(
                              text: "Discount",
                              size: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          CommonText(
                            text: "-\$2",
                            size: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Colors.grey.shade900.withOpacity(0.1),
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          CommonText(
                              text: "Total",
                              size: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          CommonText(
                            text: "\$66",
                            size: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CommonContainer(
                height: 125,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Center(
                        child: CommonButton(
                      color: const Color(0xfffc6011),
                      onTap: () {
                        thanksbottomsheet(context);
                      },
                      buttontext: "Send Order",
                      buttontextcolor: Colors.white,
                    ))),
              ),
            ],
          ),
        ));
  }
}
