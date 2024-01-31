import 'package:dating_app/components/finding_buttons.dart';
import 'package:flutter/material.dart';

class ProfileDetail1 extends StatefulWidget {
  final String imagePath;

  const ProfileDetail1({super.key, required this.imagePath});

  @override
  State<ProfileDetail1> createState() => _ProfileDetail1State();
}

class _ProfileDetail1State extends State<ProfileDetail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 255),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Center(
                    child: Container(
                      height: 380,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 244, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(10, 10),
                                        spreadRadius: 10,
                                        blurRadius: 60,
                                        color:
                                            Color.fromARGB(255, 255, 206, 206),
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
                                        color:
                                            Color.fromARGB(255, 255, 206, 206),
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
                                        color:
                                            Color.fromARGB(255, 255, 206, 206),
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
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Elena thomas, 50',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 246, 107, 97),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.sms,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 238),
                            child: Text(
                              'Designer',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(right: 258),
                            child: Text(
                              'About',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 25, 25, 25),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                                'Hey there me Eleena thomas. Iam a software engineer.Iam liiking for a partener.A partner who loves me.'),
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FindingButtons(text: 'Profile'),
                              Container(
                                child: Center(child: Text('Request')),
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
