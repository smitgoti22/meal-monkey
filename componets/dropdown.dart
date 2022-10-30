import 'package:flutter/material.dart';

import '../data/appdata.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: [
        DropdownMenuItem(
            value: location[0].toString(),
            child: Center(
                child: Text(
                  location[0].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[1].toString(),
            child: Center(
                child: Text(
                  location[1].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[2].toString(),
            child: Center(
                child: Text(
                  location[2].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[3].toString(),
            child: Center(
                child: Text(
                  location[3].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[4].toString(),
            child: Center(
                child: Text(
                  location[4].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[5].toString(),
            child: Center(
                child: Text(
                  location[5].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
        DropdownMenuItem(
            value: location[6].toString(),
            child: Center(
                child: Text(
                  location[6].toString(),
                  style: const TextStyle(fontSize: 16),
                ))),
      ],
      onChanged: (_value) {
        setState(() {
          newvalue = _value!;
        });
      },
      icon: const Icon(Icons.expand_more_rounded,color:  Color(0xfffc6011),),
      decoration: InputDecoration(
        hintText: 'Current Location',
        contentPadding: const EdgeInsets.only(bottom: 20,),
        hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800,fontSize: 15),
        border: InputBorder.none,
      ),
    );  }
}

