import 'package:dating_app/components/finding_buttons.dart';
import 'package:dating_app/components/profile_container.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 255),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            //discover
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Discover',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),

            //Featured text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New people',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/search.png', height: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  FindingButtons(text: 'New People'),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 145,
                    padding: EdgeInsets.all(6),
                    child: Center(
                        child: Text(
                      'Online Only',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            //feeds
            Expanded(
              child: ListView(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb3.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb3.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb3.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb3.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb1.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
