import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final FontWeight ? fontWeight;
  final double ? size;
  final Color ? color;
  final int ? maxlines;
  final TextAlign ? textalign;

  const CommonText({Key? key, required this.text, this.fontWeight,  this.size, this.color, this.maxlines = 1, this.textalign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
