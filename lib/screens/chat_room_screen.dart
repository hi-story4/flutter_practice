import 'package:flutter/material.dart';
import 'package:flutter_practice/components/chat_icon_button.dart';
import 'package:flutter_practice/components/my_chat.dart';
import 'package:flutter_practice/components/other_chat.dart';
import 'package:flutter_practice/components/time_line.dart';
import 'package:flutter_practice/models/chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();
  //위치 주의 . stf override 위로 하면 안됨.

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("홍길동", style: Theme.of(context).textTheme.headline6),
          actions: [
            Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars, size: 20),
            SizedBox(width: 25)
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                    TimeLine(time: "2021년 1월 1일 금요일"),
                    OtherChat(
                        name: "홍길동", text: "새해 복 많이 받으세요", time: "오전 10:10"),
                    MyChat(text: "선생님도 많이 받으세요", time: "오후 2:15"),
                    ...List.generate(chats.length, (index) => chats[index]),
                  ]),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  ChatIconButton(icon: Icon(FontAwesomeIcons.squarePlus)),
                  Expanded(
                      child: Container(
                    child: TextField(
                      controller: _textController,
                      maxLines: 1,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                      onSubmitted: _handleSubmitted,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    setState(() {
      chats.add(MyChat(
          text: text,
          time: DateFormat("a K:m")
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후")));
    });
  }
}
