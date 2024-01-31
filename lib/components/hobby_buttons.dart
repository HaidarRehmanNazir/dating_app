import 'package:flutter/material.dart';

class Hobbybuttons extends StatelessWidget {
  final String text;
  final String imagePath;
  const Hobbybuttons({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 230, 97, 97),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(20, 20),
              blurRadius: 100,
              color: Colors.white,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(imagePath, height: 20),
        ],
      ),
    );
  }
}
