import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/components/chat_card.dart';
import 'package:flutter_practice/models/chat.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("채팅"),
        ),
        body: ListView(
          children: List.generate(
              chats.length, (index) => ChatCard(chat: chats[index])),
        ));
  }
}
