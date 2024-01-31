import 'package:flutter/material.dart';

class Mycontroller extends StatelessWidget {
  final String text;
  const Mycontroller({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //text
        Padding(
          padding: const EdgeInsets.only(right: 260),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),

        //divider
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Divider(
            color: Colors.white,
            thickness: 4,
          ),
        ),
      ],
    );
  }
}
