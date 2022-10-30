import 'package:demo_app/Common_classes/Favourite_button.dart';
import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/componets/toast.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/homepage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../componets/bottom_appbar.dart';
import '../../../componets/floating_action_button.dart';

class ShowItemScreen extends StatefulWidget {
  const ShowItemScreen({Key? key}) : super(key: key);

  @override
  State<ShowItemScreen> createState() => _ShowItemScreenState();
}

class _ShowItemScreenState extends State<ShowItemScreen> {
  double rating = 0;
  int counter = 0;
  String newvalue = "";
  String invalue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomBottomAppbar(),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 315,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  currunt_item_screen[currunt_item_index]
                                      ['image'],
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.4),
                                Colors.transparent,
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomCenter),
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.chevron_left,
                                color: Colors.white, size: 26),
                          ),
                          IconButton(
                              onPressed: () {},
                              splashRadius: 25,
                              icon: const Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.white,
                                size: 22,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.27,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.85,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        /// Item name
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          currunt_item_screen[
                                                  currunt_item_index]['title']
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.grey.shade900
                                                  .withOpacity(0.9)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),

                                        /// Rating bar and Item price
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            /// Rating Bar
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RatingBar.builder(
                                                  initialRating: 3,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  itemSize: 24,
                                                  allowHalfRating: false,
                                                  itemCount: 5,
                                                  itemPadding:
                                                      const EdgeInsets.only(
                                                          right: 0.5),
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                    Icons.star,
                                                    color: Color(0xfffc6011),
                                                  ),
                                                  updateOnDrag: true,
                                                  onRatingUpdate: (rating) =>
                                                      setState(() {
                                                    this.rating = rating;
                                                  }),
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  " ${currunt_item_screen[currunt_item_index]['rating'].toString()} Star Rating",
                                                  style: const TextStyle(
                                                      color: Color(0xfffc6011),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),

                                            /// Item price
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Rs.${currunt_item_screen[currunt_item_index]['price'].toString()}",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .grey.shade900
                                                          .withOpacity(0.8),
                                                      fontSize: 32,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "/per Portion",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .grey.shade900
                                                          .withOpacity(0.8),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),

                                        /// Description
                                        Text(
                                          "Description",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey.shade800
                                                  .withOpacity(0.9)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          currunt_item_screen[
                                                  currunt_item_index]['desc']
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey.shade900
                                                  .withOpacity(0.9)),
                                        ),
                                        const SizedBox(height: 10),
                                        Divider(
                                          thickness: 1.5,
                                          color: Colors.grey.shade900
                                              .withOpacity(0.1),
                                          height: 20,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Customise your Order",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey.shade800
                                                  .withOpacity(0.9)),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        DropdownButtonFormField<String>(
                                          items: [
                                            DropdownMenuItem(
                                                value:
                                                    sizePortion[0].toString(),
                                                child: Center(
                                                    child: Text(
                                                  sizePortion[0].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                            DropdownMenuItem(
                                                value:
                                                    sizePortion[1].toString(),
                                                child: Center(
                                                    child: Text(
                                                  sizePortion[1].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                            DropdownMenuItem(
                                                value:
                                                    sizePortion[2].toString(),
                                                child: Center(
                                                    child: Text(
                                                  sizePortion[2].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                            DropdownMenuItem(
                                                value:
                                                    sizePortion[3].toString(),
                                                child: Center(
                                                    child: Text(
                                                  sizePortion[3].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                          ],
                                          onChanged: (value) {
                                            setState(() {
                                              newvalue = value!;
                                            });
                                          },
                                          icon: Icon(Icons.expand_more_rounded,
                                              color: Colors.grey.shade700),
                                          decoration: InputDecoration(
                                            hintText:
                                                '- Select the size of portion -',
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 30, right: 15),
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade700,
                                                fontSize: 14),
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey.shade800
                                                .withOpacity(0.1),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        DropdownButtonFormField<String>(
                                          items: [
                                            DropdownMenuItem(
                                                value: withIngredients[0]
                                                    .toString(),
                                                child: Center(
                                                    child: Text(
                                                  withIngredients[0].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                            DropdownMenuItem(
                                                value: withIngredients[1]
                                                    .toString(),
                                                child: Center(
                                                    child: Text(
                                                  withIngredients[1].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                            DropdownMenuItem(
                                                value: withIngredients[2]
                                                    .toString(),
                                                child: Center(
                                                    child: Text(
                                                  withIngredients[2].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ))),
                                          ],
                                          onChanged: (_value) {
                                            setState(() {
                                              invalue = _value!;
                                            });
                                          },
                                          icon: Icon(Icons.expand_more_rounded,
                                              color: Colors.grey.shade700),
                                          decoration: InputDecoration(
                                            hintText:
                                                '- Select the ingredients -',
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 30, right: 15),
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade700,
                                                fontSize: 14),
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey.shade800
                                                .withOpacity(0.1),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Number of Portions",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey.shade800
                                                      .withOpacity(0.9)),
                                            ),
                                            Spacer(),
                                            CommonButton(
                                              color: Color(0xfffc6011),
                                              onTap: () {
                                                setState(() {
                                                  if (counter > 0) {
                                                    counter--;
                                                  }
                                                });
                                              },
                                              height: 35,
                                              width: 50,
                                              buttontext: "-",
                                              fontsize: 22,
                                              buttontextcolor: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            CommonButton(
                                              color: Colors.white,
                                              onTap: () {},
                                              height: 35,
                                              width: 50,
                                              buttontext: "$counter",
                                              buttontextcolor:
                                                  Color(0xfffc6011),
                                              fontsize: 15,
                                              bordercolor: Color(0xfffc6011),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            CommonButton(
                                              color: Color(0xfffc6011),
                                              onTap: () {
                                                setState(() {
                                                  counter++;
                                                });
                                              },
                                              height: 35,
                                              width: 50,
                                              buttontext: "+",
                                              fontsize: 22,
                                              buttontextcolor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    )),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            color: Color(0xfffc6011),
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    right:
                                                        Radius.circular(35))),
                                      ),
                                    ),
                                    Positioned(
                                      top: 20,
                                      bottom: 20,
                                      right: 45,
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            height: 175,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors
                                                          .grey.shade900
                                                          .withOpacity(0.1),
                                                      spreadRadius: 3,
                                                      blurRadius: 10)
                                                ],
                                                borderRadius: const BorderRadius
                                                        .horizontal(
                                                    left: Radius.circular(35),
                                                    right:
                                                        Radius.circular(15))),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Total Price",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors
                                                            .grey.shade800
                                                            .withOpacity(0.9)),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "LKR ${counter * currunt_item_screen[currunt_item_index]['price']}",
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors
                                                            .grey.shade800
                                                            .withOpacity(0.9)),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  CommonButton(
                                                    color:
                                                        const Color(0xfffc6011),
                                                    onTap: toastShow,
                                                    height: 40,
                                                    width: 200,
                                                    ischild: true,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Icon(
                                                              Icons
                                                                  .add_shopping_cart,
                                                              color:
                                                                  Colors.white),
                                                          SizedBox(
                                                            width: 15,
                                                          ),
                                                          Text(
                                                            "Add to Cart",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          SizedBox(
                                                            width: 25,
                                                          ),
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              right: -25,
                                              top: 0,
                                              bottom: 0,
                                              child: Container(
                                                  height: 55,
                                                  width: 55,
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                            spreadRadius: 1,
                                                            blurRadius: 5,
                                                            color: Colors
                                                                .grey.shade900
                                                                .withOpacity(
                                                                    0.2),
                                                            offset:
                                                                Offset(0, 3)),
                                                      ],
                                                      shape: BoxShape.circle,
                                                      color: Colors.white),
                                                  child: const Center(
                                                      child: Icon(
                                                    Icons.shopping_cart_rounded,
                                                    color: Color(0xfffc6011),
                                                  )))),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: -32,
                            right: 5,
                            child: SizedBox(
                              height: 80,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'images/meal_monkey/Componets/fav_background.png',
                                  ),
                                  const Positioned(
                                      left: 0,
                                      top: 15,
                                      right: 5,
                                      child: FavouriteButton()),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
                ],
              ),
            ]),
          )),
        ],
      ),
    );
  }
}
