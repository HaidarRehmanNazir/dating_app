import 'package:dating_app/components/hash_logo.dart';
import 'package:dating_app/components/image_container.dart';
import 'package:dating_app/components/my_button.dart';
import 'package:dating_app/components/my_controller.dart';
import 'package:dating_app/screens/describe_yourself.dart';
import 'package:flutter/material.dart';

class YourPicturesScreen extends StatelessWidget {
  const YourPicturesScreen({super.key});

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

            //text
            Text(
              'Add Two Or More Pictures!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),

            //images container
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ImageContainer(),
                    ImageContainer(),
                    ImageContainer(),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ImageContainer(),
                    ImageContainer(),
                    ImageContainer(),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 150),

            //controller
            Mycontroller(text: '4/6'),
            const SizedBox(height: 30),

            //button
            MyButton(
                text: 'Next Step',
                onTap: () {
                  //go to describe yourself!
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescribeYouScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
