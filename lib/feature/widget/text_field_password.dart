import 'package:flutter/material.dart';

import '../../Theme.dart';

class CustomTextFieldPassword extends StatefulWidget {
  String text;
   CustomTextFieldPassword({super.key, required this.text});

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        label: Text(widget.text,
          style: TextStyle(
            color: greyPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
            BorderRadius.all(Radius.circular(12))),
        filled: true,
        fillColor: greyLighter,
      ),
    );
  }
}
