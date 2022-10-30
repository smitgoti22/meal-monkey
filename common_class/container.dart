import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color ? color;
  final Color bordercolor;
  final EdgeInsets ? margin;
  final EdgeInsets ? padding;
  final DecorationImage ? decorationImage;
  final BorderRadius ? borderRadius;
  final Color shadowColor;
  final double borderwidth;
  final double  spreadRadious;
  final double  blurRadious;
  final Widget ? child;

  const CommonContainer({Key? key, required this.height, required this.width,  this.child, this.color, this.bordercolor =  Colors.transparent, this.borderwidth = 0, this.decorationImage,  this.borderRadius, this.margin, this.padding, this.shadowColor = Colors.transparent, this.spreadRadious = 0,  this.blurRadious = 0, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        image: decorationImage,
        borderRadius: borderRadius,
        border: Border.all(color: bordercolor,width: borderwidth,),
        boxShadow: [BoxShadow(color: shadowColor,spreadRadius: spreadRadious,blurRadius: blurRadious)],
      ),
      child: child,
    );
  }
}
