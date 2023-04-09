import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/home_page/home_screen.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: HomeScreen()
            ),
          ),
        ],
      ),
    );
  }
}
