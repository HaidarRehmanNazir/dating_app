import 'package:flutter/material.dart';

class ProfileTab3 extends StatelessWidget {
  const ProfileTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: const Color.fromARGB(255, 128, 125, 118),
          ),
        );
      },
    );
  }
}
