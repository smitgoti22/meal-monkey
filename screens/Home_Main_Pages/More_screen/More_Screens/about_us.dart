import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.chevron_left,color: Colors.black),),
        leadingWidth: 40,
        toolbarHeight: 55,
        title: Text(
          'About Us',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: List.generate(
                  aboutUs.length,
                      (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.circle,size: 10,color: Color(0xfffc6011),),
                        const SizedBox(width: 25,),
                         Expanded(
                           child: Text(
                        aboutUs[index],textAlign: TextAlign.left,style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        ),
                         )
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
