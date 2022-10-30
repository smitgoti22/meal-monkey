import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/Menu_Screen/menu_screen.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/homepage.dart';
import 'package:flutter/material.dart';

import '../../Product Screen/show_item_screen.dart';

class MenuProductScreen extends StatefulWidget {
  const MenuProductScreen({Key? key}) : super(key: key);

  @override
  State<MenuProductScreen> createState() => _MenuProductScreenState();
}

class _MenuProductScreenState extends State<MenuProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.black,
              size: 30,
            )),
        leadingWidth: 40,
        title: Text(
          menuData[menu_currunt_screen]['title'],
          style: TextStyle(
              fontSize: 20,
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: CommonTextfield(
                hintText: "Search Food",
                prefixicon:
                    Icon(Icons.search, color: Colors.black.withOpacity(0.4))),
          ),
          const SizedBox(
            height: 0,
          ),
          Column(
            children: List.generate(
                menuData.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState((){
                      currunt_item_screen = menuData;
                      currunt_item_index = index;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowItemScreen(),));
                    });
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
                                  image: NetworkImage("${menuData[index]['image']}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 175,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.transparent,
                                              Colors.black.withOpacity(0.9)
                                            ],
                                            begin: Alignment.center,
                                            end: Alignment.bottomCenter),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          popularRestaurants[index]['title'],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(0xfffc6011),
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              popularRestaurants[index]['rating']
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Color(0xfffc6011)),
                                            ),
                                            Text(
                                              " Cafe • Wastern Food",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.grey.shade100),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                )),
          ),
        ]),
      ),
    );
  }
}
