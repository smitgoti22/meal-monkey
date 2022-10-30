import 'package:flutter/material.dart';

import '../data/appdata.dart';

Widget curruntscreen = screens[0];
int track_screen = 1;

class CustomBottomAppbar extends StatefulWidget {
  const CustomBottomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppbar> createState() => _CustomBottomAppbarState();
}

class _CustomBottomAppbarState extends State<CustomBottomAppbar> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      curruntscreen = screens[0];
                      track_screen = 1;
                    });
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => curruntscreen = screens[0]));
                  },
                  child: Column(children: [
                    Icon(Icons.apps,
                        color: track_screen == 1
                            ? Color(0xfffc6011)
                            : Colors.grey),
                    Text(
                      "Menu",
                      style: TextStyle(
                          fontSize: 14,
                          color: track_screen == 1
                              ? Color(0xfffc6011)
                              : Colors.grey),
                    )
                  ]),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      curruntscreen = screens[1];
                      track_screen = 2;
                    });
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => curruntscreen = screens[1]));
                  },
                  child: Column(children: [
                    Icon(Icons.shopping_bag,
                        color: track_screen == 2
                            ? Color(0xfffc6011)
                            : Colors.grey),
                    Text(
                      "Offers",
                      style: TextStyle(
                          color: track_screen == 2
                              ? Color(0xfffc6011)
                              : Colors.grey),
                    )
                  ]),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      curruntscreen = screens[2];
                      track_screen = 3;
                    });
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => curruntscreen = screens[2]));
                  },
                  child: Column(children: [
                    Icon(Icons.person,
                        color: track_screen == 3
                            ? Color(0xfffc6011)
                            : Colors.grey),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: track_screen == 3
                              ? Color(0xfffc6011)
                              : Colors.grey),
                    )
                  ]),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      curruntscreen = screens[3];
                      track_screen = 4;
                    });
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => curruntscreen = screens[3]));
                  },
                  child: Column(children: [
                    Icon(Icons.menu_open_rounded,
                        color: track_screen == 4
                            ? Color(0xfffc6011)
                            : Colors.grey),
                    Text(
                      "More",
                      style: TextStyle(
                          color: track_screen == 4
                              ? Color(0xfffc6011)
                              : Colors.grey),
                    )
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
