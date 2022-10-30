import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  final String hintText;
  final double hintTextSize;
  final double borderradious;
  final String? label;
  final bool? islabel;
  final bool obsecuretext;
  final Widget? prefixicon;

  CommonTextfield({
    Key? key,
    required this.hintText,
    this.obsecuretext = false,
    this.borderradious = 55,
    this.hintTextSize = 13,
    this.prefixicon,
    this.islabel, this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextField(
        cursorColor: Colors.indigo,
        cursorHeight: 20,
        obscureText: obsecuretext,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: islabel == true ? "\t$label\t" : hintText,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          hintStyle:
              TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.4)),
          filled: true,
          contentPadding: const EdgeInsets.only(left: 40, top: 10, bottom: 10),
          fillColor: Colors.grey.shade700.withOpacity(0.1),
          hintTextDirection: TextDirection.values[1],
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradious),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradious),
              borderSide:
                  BorderSide(color: Colors.grey.shade700.withOpacity(0.5))),
          prefixIcon: prefixicon,
          prefixIconColor: Colors.black.withOpacity(0.4),
        ),
      ),
    );
  }
}
