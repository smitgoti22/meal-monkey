import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/Menu_Screen/Menu_Screens/menu_product_screen.dart';
import 'package:flutter/material.dart';

import '../../../componets/bottom_appbar.dart';
import '../../../componets/floating_action_button.dart';

int menu_currunt_screen = 0;

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 55,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Menu',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                /// Background Container
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xfffc6011),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(25))),
                  ),
                ),
                /// Menu List
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        Food.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState((){
                              menu_currunt_screen = index;
                            });
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const MenuProductScreen(),));
                          },
                          child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, top: 20, bottom: 20),
                                child: Container(
                                  height: 85,
                                  width: 305,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(45),
                                          bottomLeft: Radius.circular(45),
                                          bottomRight: Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade900
                                                .withOpacity(0.2),
                                            spreadRadius: 1,
                                            blurRadius: 5)
                                      ]),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      /// Image
                                       Positioned(
                                          left: -15,
                                          top: 0,
                                          bottom: 0,
                                          child: CircleAvatar(
                                              radius: 35,
                                              backgroundImage: NetworkImage(
                                                  "${Food[index]['image']}"))),
                                      /// title, Items
                                      Positioned(
                                          left: 75,
                                          right: 0,
                                          top: 20,
                                          bottom: 0,
                                          child: Text(
                                            Food[index]['title'].toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          )),
                                      Positioned(
                                          left: 75,
                                          right: 0,
                                          top: 45,
                                          bottom: 0,
                                          child: Text(
                                            "${Food[index]['items']} items",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          )),
                                      /// Right arrow button
                                      Positioned(
                                          right: -15,
                                          top: 0,
                                          bottom: 0,
                                          child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        spreadRadius: 1,
                                                        blurRadius: 5,
                                                        color: Colors.grey.shade900.withOpacity(0.2),
                                                        offset: Offset(0, 3)),
                                                  ],
                                                  shape: BoxShape.circle,
                                                  color: Colors.white),
                                              child: const Center(
                                                  child: Icon(
                                                Icons.chevron_right_outlined,
                                                color: Color(0xfffc6011),
                                              )))),
                                    ],
                                  ),
                                ),
                              ),
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
