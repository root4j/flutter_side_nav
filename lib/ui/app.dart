import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(
              title: 'Pagina de Post',
            ),
        '/chat': (context) => const ChatPage(
              title: 'Chat',
            ),
      },
    );
  }
}
