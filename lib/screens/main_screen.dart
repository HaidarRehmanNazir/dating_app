import 'package:dating_app/screens/discovery_screen.dart';
import 'package:dating_app/screens/menu_screen.dart';
import 'package:dating_app/screens/messages_screen.dart';
import 'package:dating_app/screens/profile_screen.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myIndex = 0;
  List<Widget> WidgetList = const [
    MenuScreen(),
    DiscoveryScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 244, 255),
        bottomNavigationBar: SizedBox(
          height: 30,
          child: SingleChildScrollView(
            child: BottomNavigationBar(
                currentIndex: myIndex,
                onTap: (index) {
                  setState(() {
                    myIndex = index;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.local_fire_department,
                        size: 20,
                        color: Color(0xfffE10101),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.explore,
                        size: 20,
                        color: Color(0xfffE10101),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.sms,
                        size: 20,
                        color: Color(0xfffE10101),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 20,
                        color: Color(0xfffE10101),
                      ),
                      label: ''),
                ]),
          ),
        ),
        body: Center(
          child: WidgetList[myIndex],
        ));
  }
}
