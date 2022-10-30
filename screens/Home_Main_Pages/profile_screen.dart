import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/common_class/textfield.dart';
import 'package:demo_app/meal_monkey/screens/Signup%20Login/choose_log_sign.dart';
import 'package:flutter/material.dart';

import '../../componets/bottom_appbar.dart';
import '../../componets/floating_action_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 55,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Profile',
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Dp Image
                const SizedBox(
                  height: 15,
                ),
                ClipOval(
                  child: Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                            'images/meal_monkey/homepage/Profile/mealdp.jpg',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            height: 25,
                            width: 35,
                            decoration:
                                BoxDecoration(color: Colors.black.withOpacity(0.5)),
                            child: const Center(
                              child: Icon(Icons.camera_alt,
                                  color: Colors.grey, size: 18),
                            )),
                      ),
                    ],
                  ),
                ),

                /// Edit Profile
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.edit, size: 20, color: Color(0xfffc6011)),
                    SizedBox(width: 2),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Color(0xfffc6011),
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                  ],
                ),

                /// user name
                const SizedBox(height: 5),
                Text(
                  'Hi there Emillia!',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade900),
                ),

                /// Sign Out
                const SizedBox(height: 5),
                GestureDetector(
                  onTap : () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectLogSign(),));
                  },
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),

                /// Details
                const SizedBox(height: 15,),
                CommonTextfield(label: "Username", hintText: 'Username',),
                const SizedBox(height: 5,),
                CommonTextfield(label: "Email", hintText: 'Email',),
                const SizedBox(height: 5,),
                CommonTextfield(label: "Mobile No", hintText: 'Mobile No',),
                const SizedBox(height: 5,),
                CommonTextfield(label: "Address", hintText: 'Address',),
                const SizedBox(height: 5,),
                CommonTextfield(label: "Password", hintText: 'Password',obsecuretext: true),
                const SizedBox(height: 5,),
                CommonTextfield(label: "Comfirm Password", hintText: 'Comfirm Password',obsecuretext: true),
                const SizedBox(height: 15,),

                /// Save Button
                CommonButton(color: Color(0xfffc6011),buttontext: "Save",buttontextcolor: Colors.white,onTap: (){}),
                const SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
