
import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class HighLight extends StatelessWidget {
  Widget counter;
  String label;
  HighLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: GlobalVariables.defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
