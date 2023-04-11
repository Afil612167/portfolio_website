import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/global_variable.dart';
import 'package:portfolio_website/responsive.dart';
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
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: GlobalVariables.bgColor,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu)),
            ),
      drawer: SideMenu(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(child: HomeScreen()),
          ),
        ],
      ),
    );
  }
}
