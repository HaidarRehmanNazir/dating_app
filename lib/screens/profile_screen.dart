import 'package:dating_app/components/profile_button.dart';
import 'package:dating_app/utils/profile_tab1.dart';
import 'package:dating_app/utils/profile_tab2.dart';
import 'package:dating_app/utils/profile_tab3.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 244, 255),
        body: Column(
          children: [
            const SizedBox(height: 20),
            //appbar
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Haidar Rehman',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Icon(Icons.expand_circle_down_outlined),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.add,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.menu,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            //profile picture
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Color(0xfff995EDB)),
                        borderRadius: BorderRadius.circular(100)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'assets/images/profileImage.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '125',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '203',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '579',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //edit profile + share profile buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileButton(text: 'Edit Profile'),
                ProfileButton(text: 'Share Profile'),
              ],
            ),
            const SizedBox(height: 30),
            //pictures gallery
            //top + recent +short
            TabBar(tabs: [
              Tab(
                text: 'Top',
              ),
              Tab(
                text: 'Recent',
              ),
              Tab(
                text: 'Short',
              ),
            ]),
            Expanded(
                child: TabBarView(children: [
              ProfileTab1(),
              ProfileTab2(),
              ProfileTab3(),
            ]))

            //
          ],
        ),
      ),
    );
  }
}
