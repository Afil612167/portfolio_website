import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/global_variable.dart';
import 'package:portfolio_website/screens/main_screen/main_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: GlobalVariables.secondaryColor,
          canvasColor: GlobalVariables.bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1:
                    const TextStyle(color: GlobalVariables.bodyTextColor),
                bodyText2:
                    const TextStyle(color: GlobalVariables.bodyTextColor),
              )),
      home: MainScreen(),
    );
  }
}