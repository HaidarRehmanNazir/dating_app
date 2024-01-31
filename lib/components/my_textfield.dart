import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  const MyTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w100, color: Colors.grey),
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true),
      ),
    );
  }
}
