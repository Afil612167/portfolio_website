// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class CodingArea extends StatelessWidget {
  const CodingArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(GlobalVariables.defaultPadding / 2),
      child: Column(
        children: [
          Row(
            children:  [
              Text(
                "Coding",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          const Padding(
              padding:
                  EdgeInsets.only(top: GlobalVariables.defaultPadding / 2)),
          Coding(
            icon: GlobalVariables.cIcon,
            text: "C",
          ),
          Coding(
            icon: GlobalVariables.dartIcon,
            text: "Dart",
          ),
          Coding(
            icon: GlobalVariables.javaIcon,
            text: "Java",
          ),
          const Divider()
        ],
      ),
    );
  }
}

class Coding extends StatelessWidget {
  String icon;
  String text;
  Coding({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: GlobalVariables.defaultPadding / 2),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 20,
          ),
          const SizedBox(
            width: GlobalVariables.defaultPadding,
          ),
          Text(text),
        ],
      ),
    );
  }
}
