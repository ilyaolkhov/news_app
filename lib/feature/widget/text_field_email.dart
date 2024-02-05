import 'package:flutter/material.dart';

import '../../Theme.dart';

class CustomTextFieldEmail extends StatefulWidget {
  const CustomTextFieldEmail({super.key});

  @override
  State<CustomTextFieldEmail> createState() => _CustomTextFieldEmailState();
}

class _CustomTextFieldEmailState extends State<CustomTextFieldEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline_outlined),
        label: Text('Email address',
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
