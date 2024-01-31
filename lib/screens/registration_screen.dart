import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/components/my_controller.dart';
import 'package:dating_app/components/my_textfield.dart';
import 'package:dating_app/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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

            //email
            Text(
              'What\'s Your Email Address?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),

            //textfield
            MyTextField(hintText: 'Email'),
            const SizedBox(height: 300),

            //controller
            Mycontroller(text: '1/6'),
            const SizedBox(height: 30),

            //button
            MyButton(
                text: 'Next Step',
                onTap: () {
                  //go to verification
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
