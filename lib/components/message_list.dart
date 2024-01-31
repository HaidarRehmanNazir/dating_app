import 'package:flutter/material.dart';

class MessageList extends StatefulWidget {
  const MessageList({super.key});

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/person4.jpg'),
        radius: 25,
      ),
      title: Text(
        'Haider Rehman',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        'How are you',
        style: TextStyle(color: Colors.white),
      ),
      trailing: Column(
        children: [
          const SizedBox(height: 10),
          Image.asset('assets/images/dot.png', height: 10),
          const SizedBox(height: 20),
          Text(
            '09:30',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
