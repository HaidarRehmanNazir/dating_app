import 'package:flutter/material.dart';

class FindingButtons extends StatelessWidget {
  final String text;
  const FindingButtons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      height: 40,
      width: 145,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 94, 83),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
