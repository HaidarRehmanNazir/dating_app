import 'package:dating_app/components/message_list.dart';
import 'package:dating_app/components/user_stoties.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 255),
      body: Column(
        children: [
          const SizedBox(height: 30),
          //appbar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfffE94057)),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 227, 226, 226)),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(-10, -10),
                            blurRadius: 100,
                            color: Colors.white,
                          ),
                          BoxShadow(
                            offset: Offset(10, 10),
                            blurRadius: 100,
                            color: Color(0xFFBEBEBE),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.tune,
                      size: 18,
                      color: Color(0xfffE94057),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          //search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.travel_explore,
                      color: Colors.grey,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(height: 4.5),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          const SizedBox(height: 30),

          //activities stories
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              'Activities',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
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
                UserStories(imagePath: 'assets/images/img4.jpg', text: 'Alex'),
                UserStories(imagePath: 'assets/images/img5.jpg', text: 'Elon'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
              child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 167, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView(
              children: [
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
                MessageList(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
