// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio_website/constants/global_variable.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(GlobalVariables.defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Knowledge",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          const SizedBox(
            height: GlobalVariables.defaultPadding / 2,
          ),
          KnowledgeText(
            text: "Flutter,dart",
          ),
          KnowledgeText(
            text: "Git Knowledge",
          ),
          KnowledgeText(
            text: "Rest API",
          ),
          const Divider()
        ],
      ),
    );
  }
}

class KnowledgeText extends StatelessWidget {
  String text;
  KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: GlobalVariables.defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(GlobalVariables.checkIcon),
          const SizedBox(
            width: GlobalVariables.defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
