import 'package:demo_app/meal_monkey/data/appdata.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
          'Inbox',
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
                  inbox.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Color(0xfffc6011),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  inbox[index]['title'],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  inbox[index]['desc'],
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  inbox[index]['time'],
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                const SizedBox(height: 10),
                                Icon(Icons.star_border_outlined,color: Color(0xfffc6011),)
                              ],
                            )
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
