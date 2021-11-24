import 'package:flutter/material.dart';
import 'package:flutter_side_nav/ui/widggets/util_chat.dart';

import 'pages/chat_page.dart';
import 'pages/home_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  late List<Chat> jimChat;
  late List<Chat> jeffChat;
  String me = "Ruthford";

  _AppState() {
    jimChat = [
      Chat(me, "Hola", true),
      Chat("Jim", "Hola", false),
      Chat(me, "Como estas?", true),
      Chat("Jim", "Bien y tu?", false),
      Chat(me, "Normal", true),
    ];
    jeffChat = [
      Chat(me, "Hi", true),
      Chat("Jeff", "Hi", false),
      Chat(me, "How are you?", true),
      Chat("Jeff", "Find and you?", false),
      Chat(me, "Normal", true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(
              title: 'Pagina de Post',
            ),
        '/chat': (context) => ChatPage(
              title: 'Chat', meUser: me, conv: jimChat,
            ),
        '/chat2': (context) => ChatPage(
              title: 'Chat',meUser: me, conv: jeffChat,
            ),
      },
    );
  }
}
