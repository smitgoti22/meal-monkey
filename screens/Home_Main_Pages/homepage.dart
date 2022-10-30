import 'package:demo_app/meal_monkey/common_class/container.dart';
import 'package:demo_app/meal_monkey/common_class/text.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:demo_app/meal_monkey/componets/bottom_appbar.dart';
import 'package:demo_app/meal_monkey/componets/dropdown.dart';
import 'package:demo_app/meal_monkey/componets/floating_action_button.dart';
import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/Product%20Screen/show_item_screen.dart';
import 'package:flutter/material.dart';

var currunt_item_screen = notifications;
var currunt_item_index = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          splashColor: Colors.transparent, highlightColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 55,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Good morning Akila!',
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
          floatingActionButton: const CustomFloatingButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Delivering Text
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CommonText(
                      text: 'Delivering to', color: Colors.grey, size: 12),
                ),

                /// Location select
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: DropDownList(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                /// Search Text fieald
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CommonTextfield(
                      hintText: 'Search Food',
                      prefixicon: Icon(Icons.search,
                          size: 20, color: Colors.black.withOpacity(0.4))),
                ),
                const SizedBox(
                  height: 10,
                ),

                /// Category
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: catagoryList.length,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CommonContainer(
                                  height: 100,
                                  width: 100,
                                  margin: const EdgeInsets.only(left: 10),
                                  decorationImage: DecorationImage(
                                      image: AssetImage(
                                          catagoryList[index]['image']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                              const SizedBox(
                                height: 5,
                              ),
                              CommonText(
                                text: catagoryList[index]['title'],
                              )
                            ],
                          );
                        }),
                  ),
                ),

                /// Popular Restaurants
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonText(text: 'Popular Restaurants', color:  Colors.grey.shade900, size: 20,fontWeight:  FontWeight.w400),
                      GestureDetector(
                        onTap: () {},
                        child: const CommonText(text: 'View All', color:  Color(0xfffc6011), size: 12,fontWeight:  FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: List.generate(
                      popularRestaurants.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currunt_item_screen = popularRestaurants;
                                currunt_item_index = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ShowItemScreen(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonContainer(
                                      height: 200,
                                      width: double.infinity,
                                      margin: const EdgeInsets.only(left: 0),
                                      decorationImage: DecorationImage(
                                          image: AssetImage(
                                              catagoryList[index]['image']),
                                          fit: BoxFit.cover),),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: CommonText(text: popularRestaurants[index]['title'],fontWeight:  FontWeight.bold,size: 16),
                                  ),
                                  const SizedBox(
                                    height: 1,
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
                                        CommonText(text: popularRestaurants[index]['rating'].toString(), fontWeight: FontWeight.w400,size: 13,color: Color(0xfffc6011),),
                                        CommonText(text: " (${popularRestaurants[index]['review']} ratings) cafe • Wastern Food", fontWeight: FontWeight.w400,size: 13,color: Colors.grey,),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                ),

                /// Most Popular
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: 'Most Popular', size: 20, color: Colors.grey.shade900, fontWeight: FontWeight.w400),
                      GestureDetector(
                        onTap: () {},
                        child: const CommonText(
                          text: 'View All', size: 12, color: Color(0xfffc6011), fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: mostPopular.length,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currunt_item_screen = mostPopular;
                                currunt_item_index = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ShowItemScreen(),
                                  ));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonContainer(
                                  height: 150,
                                  width: 225,
                                  margin: const EdgeInsets.only(left: 10),
                                  decorationImage : DecorationImage(
                                          image: NetworkImage(
                                              mostPopular[index]['image']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CommonText(
                                    text: mostPopular[index]['title'],
                                        fontWeight: FontWeight.bold,
                                        size: 16
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      const CommonText(
                                        text: "cafe • Western Food", fontWeight: FontWeight.w400, size: 13, color: Colors.grey),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Color(0xfffc6011),
                                        size: 16,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      CommonText(
                                        text: mostPopular[index]['rating'].toString(), fontWeight: FontWeight.bold, size: 13, color: Color(0xfffc6011)
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),

                /// Recent Items
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: 'Recent Items', size: 20, color: Colors.grey.shade900, fontWeight: FontWeight.w400),
                      GestureDetector(
                        onTap: () {},
                        child: const CommonText(
                          text: 'View All',
                              size: 12,
                              color: Color(0xfffc6011),
                              fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      recentItems.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currunt_item_screen = recentItems;
                                currunt_item_index = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ShowItemScreen(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CommonContainer(
                                    height: 100,
                                    width: 100,
                                      borderRadius: BorderRadius.circular(15),
                                      decorationImage: DecorationImage(
                                          image: NetworkImage(
                                              recentItems[index]['image']),
                                          fit: BoxFit.cover),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        text: recentItems[index]['title'],
                                          fontWeight: FontWeight.bold,
                                            size: 16
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                       const CommonText(
                                        text: "cafe • Western Food",
                                            fontWeight: FontWeight.w400,
                                            size: 14,
                                            color: Colors.grey
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xfffc6011),
                                            size: 19,
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          CommonText(
                                            text: "${recentItems[index]['rating']}",
                                                fontWeight: FontWeight.w400,
                                                size: 12,
                                                color: Color(0xfffc6011)
                                          ),
                                          CommonText(
                                            text: " (${recentItems[index]['review']} ratings)",
                                                fontWeight: FontWeight.w400,
                                                size: 13,
                                                color: Colors.grey
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer()
                                ],
                              ),
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
