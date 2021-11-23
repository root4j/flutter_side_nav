import 'package:flutter/material.dart';
import 'package:flutter_side_nav/ui/widggets/main_side_nav.dart';
import 'package:flutter_side_nav/ui/widggets/util_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const MainSideNavDrawer(),
      body: const HomeWidget(),
    );
  }
}