import 'package:flutter/material.dart';

class ContainerPicture extends StatelessWidget {
  final String imagePath;
  final String text;
  const ContainerPicture(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 390,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 335, left: 45),
          child: Row(
            children: [
              Image.asset(
                'assets/images/online.png',
                height: 10,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/tik.png',
                height: 15,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300, left: 45),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
