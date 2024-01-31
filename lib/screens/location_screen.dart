import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/components/my_controller.dart';
import 'package:dating_app/components/my_textfield.dart';
import 'package:dating_app/screens/main_screen.dart';
//import 'package:dating_app/screens/menu_screen.dart';
import 'package:flutter/material.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 201, 241),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //logo
            const SizedBox(height: 30),
            SafeArea(child: Center(child: HashLogo())),
            const SizedBox(height: 50),

            //where are you text
            Text(
              'Where Are You?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),

            //textField
            MyTextField(hintText: 'Enter Your Location'),
            const SizedBox(height: 50),

            //location
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset('assets/images/googleMap.webp'),
            ),
            const SizedBox(height: 100),

            //controller
            Mycontroller(text: '6/6'),

            //button
            MyButton(
                text: 'Go',
                onTap: () {
                  //go to menu page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
