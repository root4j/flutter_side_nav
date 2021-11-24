import 'package:flutter/material.dart';
import 'package:flutter_side_nav/ui/widggets/main_side_nav.dart';
import 'package:flutter_side_nav/ui/widggets/util_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.title, required this.meUser, required this.conv}) : super(key: key);

  final String title;
  final String meUser;
  final List<Chat> conv;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const MainSideNavDrawer(),
      body: ChatWidget(meUser: meUser, conv: conv,),
    );
  }
}