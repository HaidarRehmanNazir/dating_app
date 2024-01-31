import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final String text1;

  const ProfileContainer(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.text1});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 140,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 249, 94, 83),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      height: 100,
                      width: 130,
                      child: Image.asset(
                        imagePath,
                        height: 95,
                        fit: BoxFit.cover,
                      ))),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
                const SizedBox(width: 13),
                Image.asset(
                  'assets/images/like.png',
                  height: 25,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text(
                text1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
