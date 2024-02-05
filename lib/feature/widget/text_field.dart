import 'package:flutter/material.dart';
import 'package:news_app/Theme.dart';

class CustomTextField extends StatelessWidget {
  String text;
  Widget leadingIcons;
   CustomTextField({super.key,  required this.text,required this.leadingIcons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: leadingIcons,
          label: Text(
            text,
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
      ),
    );
  }
}

