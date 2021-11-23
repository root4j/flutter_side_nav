import 'package:flutter/material.dart';

class MainSideNavDrawer extends StatelessWidget {
  const MainSideNavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(
                  fontFamily: 'Comforter Brush',
                  package: 'flutter_side_nav',
                  color: Colors.white,
                  fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/cover.jpg',
                    package: 'flutter_side_nav'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Post'),
            onTap: () => {Navigator.of(context).pushNamed('/')},
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chat'),
            onTap: () => {Navigator.of(context).pushNamed('/chat')},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
