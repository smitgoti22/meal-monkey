import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:flutter/material.dart';

import '../../componets/bottom_appbar.dart';
import '../../componets/floating_action_button.dart';
import '../../data/appdata.dart';
import 'Product Screen/show_item_screen.dart';
import 'homepage.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 55,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Latest Offers',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade900),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: IconButton(
                onPressed: () {},
                splashRadius: 25,
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.grey.shade900,
                )),
          )
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Discount Text
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Find discount offers Special\nmeals and more",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Check Offers Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CommonButton(
                onTap: () {},
                color: const Color(0xfffc6011),
                buttontext: "Check Offers",
                fontsize: 14,
                buttontextcolor: Colors.white,
                height: 40,
                width: 150,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            /// Food Items
            Column(
              children: List.generate(
                  popularRestaurants.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState((){currunt_item_screen = offersData; currunt_item_index = index; });
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowItemScreen(),));
                        },
                        child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      offersData[index]['image']),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10),
                            child: Text(
                              offersData[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xfffc6011),
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  offersData[index]['rating']
                                      .toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Color(0xfffc6011)),
                                ),
                                Text(
                                  " (${offersData[index]['review']} ratings) cafe • Wastern Food",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                    ),
                  ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
