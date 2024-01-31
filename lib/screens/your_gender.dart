import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/components/my_controller.dart';
import 'package:dating_app/components/my_textfield.dart';
import 'package:dating_app/screens/your_pictures.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class YourGenderScreen extends StatelessWidget {
  const YourGenderScreen({super.key});

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

            //gender text
            Text(
              'What\'s Your Gender?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Row(
                    children: [
                      RoundCheckBox(
                        size: 25,
                        borderColor: Colors.white,
                        isChecked: false,
                        uncheckedColor: Colors.white,
                        checkedColor: Colors.grey[700],
                        onTap: (selected) {},
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Row(
                    children: [
                      RoundCheckBox(
                        size: 25,
                        borderColor: Colors.white,
                        isChecked: false,
                        uncheckedColor: Colors.white,
                        checkedColor: Colors.grey[700],
                        onTap: (selected) {},
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'FeMale',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            //age text
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: Text(
                'What\'s Your Age?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),

            //age textField
            MyTextField(hintText: 'Your Age'),
            const SizedBox(height: 100),

            //controller
            Mycontroller(text: '3/6'),
            const SizedBox(height: 30),

            //button
            MyButton(
                text: 'Next Step',
                onTap: () {
                  //go to upload images
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourPicturesScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
