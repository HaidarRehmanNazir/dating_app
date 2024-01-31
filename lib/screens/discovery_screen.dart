import 'package:dating_app/components/container_picture.dart';
import 'package:dating_app/components/user_stoties.dart';
import 'package:flutter/material.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            //appbar
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hash Dating',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff4B164C),
                        fontFamily: 'FontMain',
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50)),
                        child:
                            Image.asset('assets/images/bell.png', height: 18)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            //story row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UserStories(
                      imagePath: 'assets/images/img1.jpg', text: 'My Story'),
                  UserStories(
                      imagePath: 'assets/images/img2.jpg', text: 'Haider'),
                  UserStories(
                      imagePath: 'assets/images/img3.jpg', text: 'Rehman'),
                  UserStories(
                      imagePath: 'assets/images/img4.jpg', text: 'Alex'),
                  UserStories(
                      imagePath: 'assets/images/img5.jpg', text: 'Elon'),
                ],
              ),
            ),
            const SizedBox(height: 30),

            //make frnds search partner
            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 221, 251),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      '    Make Friends       ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff4B164C)),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    child: Text(
                      'Search Partner     ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff4B164C)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            //container picture
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    ContainerPicture(
                        imagePath: 'assets/images/person1.jpg',
                        text: 'Haidar rehman,30'),
                    const SizedBox(width: 30),
                    ContainerPicture(
                        imagePath: 'assets/images/person2.jpg',
                        text: 'aina fernaindas,20'),
                    const SizedBox(width: 30),
                    ContainerPicture(
                        imagePath: 'assets/images/person3.jpg',
                        text: 'Elon musk,10'),
                    const SizedBox(width: 30),
                    ContainerPicture(
                        imagePath: 'assets/images/person4.jpg',
                        text: 'firya katherine,70'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 10,
                          blurRadius: 60,
                          color: Color.fromARGB(255, 255, 206, 206),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/images/loading.png',
                    height: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 10,
                          blurRadius: 60,
                          color: Color.fromARGB(255, 255, 206, 206),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/images/like.png',
                    height: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 10,
                          blurRadius: 60,
                          color: Color.fromARGB(255, 255, 206, 206),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/images/dislike.png',
                    height: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 10,
                          blurRadius: 60,
                          color: Color.fromARGB(255, 255, 206, 206),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/images/star.png',
                    height: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
