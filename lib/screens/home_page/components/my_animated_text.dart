
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterText(),
          Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Responsive mobile and web app"),
            TyperAnimatedText("E-commerce App Ui"),
            TyperAnimatedText("Quiz app"),
          ]),
          FlutterText()
        ],
      ),
    );
  }
}

class FlutterText extends StatelessWidget {
  const FlutterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
              text: "Flutter",
              style: TextStyle(color: GlobalVariables.primaryColor),
              children: [TextSpan(text: ">")])
        ],
      ),
    );
  }
}
