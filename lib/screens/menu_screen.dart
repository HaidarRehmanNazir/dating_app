import 'package:dating_app/components/finding_bubbles.dart';
import 'package:dating_app/components/finding_buttons.dart';
import 'package:dating_app/components/profile_container.dart';
import 'package:dating_app/screens/featured_screen.dart';
import 'package:dating_app/screens/matching_screen.dart';
import 'package:dating_app/screens/nearby_screen.dart';
import 'package:dating_app/screens/new_screen.dart';
import 'package:dating_app/screens/popular_screen.dart';
import 'package:dating_app/screens/profile_detaile1.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 243, 242, 242),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Search Your Match',
                      hintStyle: TextStyle(height: 4, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              //finding bubbles
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FeaturedScreen(),
                            ));
                      },
                      child: FindingBubbles(
                        imagePath: 'assets/images/fb1.jpg',
                        text: 'Featured',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NearbyScreen(),
                            ));
                      },
                      child: FindingBubbles(
                          imagePath: 'assets/images/fb2.jpg', text: 'Nearby'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewScreen(),
                            ));
                      },
                      child: FindingBubbles(
                          imagePath: 'assets/images/fb3.jpg', text: 'New'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PopularScreen(),
                            ));
                      },
                      child: FindingBubbles(
                          imagePath: 'assets/images/fb4.jpg', text: 'Popular'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MatchingScreen(),
                            ));
                      },
                      child: FindingBubbles(
                          imagePath: 'assets/images/fb5.jpg', text: 'Matching'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              //finding buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NearbyScreen(),
                              ));
                        },
                        child: Container(
                            child: FindingButtons(text: 'Nearby Friends')),
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewScreen(),
                                ));
                          },
                          child: FindingButtons(text: 'Newly Joined')),
                      const SizedBox(width: 12),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PopularScreen(),
                                ));
                          },
                          child: FindingButtons(text: 'Random friends')),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              //featured profile text
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  'Standard  Profiles',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              //profiles
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: ProfileContainer(
                                imagePath: 'assets/images/fb1.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                      imagePath: 'assets/images/fb1.jpg',
                                    ),
                                  ));
                            },
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            child: ProfileContainer(
                                imagePath: 'assets/images/person4.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/person4.jpg'),
                                  ));
                            },
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/img1.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/img1.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/person3.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/person3.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/img2.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/img2.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/img4.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/img4.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/img5.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/img5.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileDetail1(
                                        imagePath: 'assets/images/person2.jpg'),
                                  ));
                            },
                            child: ProfileContainer(
                                imagePath: 'assets/images/person2.jpg',
                                text: 'Elena Thomas',
                                text1: '29 Years, Berlin'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
