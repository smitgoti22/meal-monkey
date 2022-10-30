import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        icon: selected == true
            ? const Icon(Icons.favorite_border, color: Color(0xfffc6011))
            : const Icon(Icons.favorite_border, color: Colors.grey));
  }
}
