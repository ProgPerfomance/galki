import 'dart:ui';

import 'package:flutter/material.dart';

bool see = true;

class CustomTextFieldWidget extends StatefulWidget {
  final controller;
  final text;
  final password;
  var onChange;
  TextInputType? textInputType;
  CustomTextFieldWidget(
      {super.key,
      required this.controller,
      required this.text,
      required this.password,
      this.onChange,
      this.textInputType});

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType ?? TextInputType.text,
      controller: widget.controller,
      onChanged: widget.onChange,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Color(
            0xFFCBCBCB,
          ),
          fontSize: 14,
        ),
        hintText: widget.text,
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: const BorderSide(
            color: Color(0xffF83758),
          ),
        ),
      ),
      obscureText: widget.password == true ? true && see == true : false,
    );
  }
}
