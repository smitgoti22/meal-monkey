import 'dart:ffi';

import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final bool switchvalue;
  final ValueChanged valueChanged;

  SwitchButton({
    Key? key,
    required this.switchvalue,
    required this.valueChanged,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  late bool _switchValue;

  @override
  void initState() {
    _switchValue = widget.switchvalue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
          widget.valueChanged(value);
        });
      },
      activeColor: const Color(0xfffc6011),
      activeTrackColor: const Color(0xfffc6011).withOpacity(0.5),
    );
  }
}
