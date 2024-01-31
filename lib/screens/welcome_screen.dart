import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 201, 241),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            //logo heading
            SafeArea(
                child: Center(
              child: HashLogo(),
            )),
            const SizedBox(height: 50),

            //image
            Image.asset(
              'assets/images/logo2.png',
              height: 280,
            ),

            //welcome title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // fontFamily: 'FontMain',
                  ),
                ),
                Text(
                  'Hash',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'FontMain',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            //subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Your Life partener!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'let\'s take a steps',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),

            //button
            MyButton(
                text: 'Go',
                onTap: () {
                  //go to registration screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
