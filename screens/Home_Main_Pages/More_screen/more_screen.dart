import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:flutter/material.dart';

import '../../../componets/bottom_appbar.dart';
import '../../../componets/floating_action_button.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int currunt_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 55,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'More',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          Column(
            children: List.generate(
                5,
                (index) =>  GestureDetector(
                  onTap:  () {
                    setState((){
                      currunt_index = index;
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => moreScreens[currunt_index],));
                  },
                  child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          /// Next button
                          const Positioned(
                            top: 0,
                            bottom: 0,
                            right: -20,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xfff6f6f6),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    color: Color(0xff7c7d7e),
                                  )),
                            ),
                          ),
                          /// Details
                          Container(
                            height: 80,
                            width: 300,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff6f6f6),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 15,),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: const Color(0xffd8d8d8),
                                  child: Image.asset(moreData[index]['image'],
                                      height: 15),
                                ),
                                const SizedBox(width: 15,),
                                Text(
                                  moreData[index]['title'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                )),
          ),
        ]),
      ),
    );
  }
}
