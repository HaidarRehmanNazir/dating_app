import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/hobby_buttons.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/components/my_controller.dart';

import 'package:dating_app/components/my_textfield.dart';
import 'package:dating_app/screens/location_screen.dart';
import 'package:flutter/material.dart';

class DescribeYouScreen extends StatelessWidget {
  const DescribeYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 201, 241),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            //logo
            SafeArea(child: Center(child: HashLogo())),
            const SizedBox(height: 50),

            //describe you text
            Text(
              'Describe Yourself! in One Line',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),

            //textField
            MyTextField(hintText: 'Describe'),
            const SizedBox(height: 50),

            //what do you like
            Text(
              'What Do You Like?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),

            //buttons
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hobbybuttons(
                        text: 'Music', imagePath: 'assets/images/music.png'),
                    Hobbybuttons(
                        text: 'Artist', imagePath: 'assets/images/art.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hobbybuttons(
                        text: 'Racing', imagePath: 'assets/images/racing.png'),
                    Hobbybuttons(
                        text: 'Hiking', imagePath: 'assets/images/hiking.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hobbybuttons(
                        text: 'Nature', imagePath: 'assets/images/nature.png'),
                    Hobbybuttons(
                        text: 'Design', imagePath: 'assets/images/design.png'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            //controller
            Mycontroller(text: '5/6'),

            //button
            MyButton(
                text: 'Next step',
                onTap: () {
                  //go to location
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourLocation(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
