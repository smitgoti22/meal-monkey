import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final String toastText = "";

void toastShow() =>
  Fluttertoast.showToast(
      msg: "Item Added Successfully.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black.withOpacity(0.5),
      textColor: Colors.white,
      fontSize: 14.0
  );
