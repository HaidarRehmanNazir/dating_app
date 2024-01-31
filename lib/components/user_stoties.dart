import 'package:flutter/material.dart';

class UserStories extends StatelessWidget {
  final String imagePath;
  final String text;
  const UserStories({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 232, 148, 248)),
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imagePath),
                ),
              ),
              Text(
                text,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
