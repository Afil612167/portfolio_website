// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class AnimatedCounter extends StatelessWidget {
  int count;
  String text;
  AnimatedCounter({Key? key, required this.count, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: count),
          duration: GlobalVariables.defaultDuration,
          builder: (context, value, child) {
            return Text(
              "$value$text",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: GlobalVariables.primaryColor,
                  ),
            );
          },
        ),
      ],
    );
  }
}
