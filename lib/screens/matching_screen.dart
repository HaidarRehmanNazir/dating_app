import 'package:dating_app/components/finding_buttons.dart';
import 'package:dating_app/components/profile_container.dart';
import 'package:flutter/material.dart';

class MatchingScreen extends StatefulWidget {
  const MatchingScreen({super.key});

  @override
  State<MatchingScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<MatchingScreen> {
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
                    'Matching People',
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
                  FindingButtons(text: 'Matching People'),
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
                              imagePath: 'assets/images/fb4.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb5.jpg',
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
                              imagePath: 'assets/images/fb5.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb5.jpg',
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
                              imagePath: 'assets/images/fb5.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb4.jpg',
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
                              imagePath: 'assets/images/fb2.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb2.jpg',
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
                              imagePath: 'assets/images/fb2.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb2.jpg',
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
                              imagePath: 'assets/images/fb2.jpg',
                              text: 'Elena Thomas',
                              text1: '56 years, Berlin'),
                          const SizedBox(width: 14),
                          ProfileContainer(
                              imagePath: 'assets/images/fb2.jpg',
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
