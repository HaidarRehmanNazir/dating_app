import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffDF8DD2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //logo
            Image.asset('assets/images/logo.png'),

            //title
            HashLogo(),
            const SizedBox(height: 14),

            //subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Ask yourself, does this person make me feel good about myself? ...Find your partner here!',
                style: TextStyle(color: Colors.grey[300]),
              ),
            ),
            const SizedBox(height: 50),

            //button
            MyButton(
              onTap: () {
                //go to registration page

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ));
              },
              text: 'Start',
            ),
          ],
        ),
      ),
    );
  }
}
