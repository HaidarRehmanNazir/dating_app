import 'package:flutter/material.dart';

class ProfileTab1 extends StatelessWidget {
  const ProfileTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: const Color.fromARGB(255, 198, 222, 242),
          ),
        );
      },
    );
  }
}
