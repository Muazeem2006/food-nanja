import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Center(child: Text("Welcome user")),
    );
  }
}