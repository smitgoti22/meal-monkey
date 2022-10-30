import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color color;
  final String buttontext;
  final double fontsize;
  final double height;
  final double ? width;
  final Widget ? child;
  final bool ? ischild;
  final Color buttontextcolor;
  final Color bordercolor;
  final VoidCallback onTap;

  const CommonButton(
      {Key? key,
      required this.color,
      this.bordercolor = Colors.transparent,
      required this.onTap,
      this.buttontext = "",
      this.buttontextcolor = Colors.black, this.fontsize = 17, this.height = 55, this.width = 346, this.child, this.ischild,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: bordercolor)),
      child: MaterialButton(
          onPressed: onTap,
          color: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          child: ischild == true ? child : Text(
            buttontext,
            style: TextStyle(color: buttontextcolor, fontSize: fontsize),
          ),
      ),
    );
  }
}
