import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  const ProfileButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-20, -20),
            blurRadius: 100,
            color: Colors.white,
          ),
          BoxShadow(
            offset: Offset(20, 20),
            blurRadius: 100,
            color: Color(0xFFBEBEBE),
          ),
        ],
      ),
    );
  }
}
