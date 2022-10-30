import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/common_class/container.dart';
import 'package:demo_app/meal_monkey/common_class/text.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/my_orders/checkout.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/homepage.dart';
import 'package:flutter/material.dart';

import '../../../../../componets/bottom_appbar.dart';
import '../../../../../componets/floating_action_button.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
        title: Text(
          'My Order',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),

          /// Item image, name, rating and desc.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Item image
                CommonContainer(
                  height: 100,
                  width: 100,
                  decorationImage: DecorationImage(
                      image: NetworkImage(
                          "${currunt_item_screen[currunt_item_index]['image']}"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                const SizedBox(
                  width: 15,
                ),

                /// Item name,rating,desc ...
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Item name
                    const SizedBox(
                      height: 5,
                    ),
                    CommonText(
                        text:
                            "${currunt_item_screen[currunt_item_index]['title']}",
                        size: 18,
                        fontWeight: FontWeight.w500),
                    const SizedBox(
                      height: 5,
                    ),

                    /// Ratings
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xfffc6011),
                          size: 20,
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        CommonText(
                            text:
                                "${currunt_item_screen[currunt_item_index]['rating']} ",
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfffc6011)),
                        CommonText(
                            text:
                                "(${currunt_item_screen[currunt_item_index]['review']} ratings)",
                            size: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ],
                    ),

                    /// food type
                    const SizedBox(
                      height: 3,
                    ),
                    CommonText(
                        text:
                            " ${currunt_item_screen[currunt_item_index]['type']}",
                        size: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),

                    /// Location
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color(0xfffc6011),
                          size: 20,
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        CommonText(
                            text:
                                "${currunt_item_screen[currunt_item_index]['location']}",
                            size: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// Order details
          const SizedBox(
            height: 25,
          ),
          CommonContainer(
            height: 275,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.07),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    orderDetails.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CommonText(
                                      text: "${orderDetails[index]['title']}",
                                      size: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  CommonText(
                                      text: "${orderDetails[index]['price']}",
                                      size: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ],
                              ),
                              Divider(
                                thickness: 1.5,
                                color: Colors.grey.shade900.withOpacity(0.1),
                                height: 20,
                              ),
                            ],
                          ),
                        ))),
          ),

          /// delivery,total,subtotal...
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Delivery
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    CommonText(
                        text: "Delivery Instrusctions",
                        size: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    CommonText(
                      text: "+ Add Notes",
                      size: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffc6011),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade900.withOpacity(0.1),
                  height: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    CommonText(
                        text: "Sub Total",
                        size: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    CommonText(
                      text: "\$68",
                      size: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffc6011),
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
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    CommonText(
                      text: "\$2",
                      size: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffc6011),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade900.withOpacity(0.1),
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    CommonText(
                        text: "Total",
                        size: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    CommonText(
                      text: "\$70",
                      size: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffc6011),
                    ),
                  ],
                ),

                /// Checkout Button
                const SizedBox(
                  height: 25,
                ),
                CommonButton(
                  color: const Color(0xfffc6011),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckOutScreen(),
                        ));
                  },
                  buttontext: "Checkout",
                  buttontextcolor: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ]),
      ),
    );
  }
}
