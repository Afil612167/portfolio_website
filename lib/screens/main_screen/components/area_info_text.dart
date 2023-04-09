import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class AreaInfoText extends StatelessWidget {
  String title, text;
  AreaInfoText({Key? key, required this.text, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: GlobalVariables.defaultPadding / 2,
          right: GlobalVariables.defaultPadding / 2,
          left: GlobalVariables.defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text)
        ],
      ),
    );
  }
}
