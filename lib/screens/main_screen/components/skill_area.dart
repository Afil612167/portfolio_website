import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';

class SkillArea extends StatelessWidget {
  const SkillArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: GlobalVariables.defaultPadding / 2,
            ),
            Text(
              "Skills",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: GlobalVariables.defaultPadding / 2),
        ),
        Row(
          children: const [
            Spacer(),
            Text("Flutter"),
            Spacer(),
            Text("Firebase"),
            Spacer()
          ],
        ),
        const SizedBox(
          height: GlobalVariables.defaultPadding / 2,
        ),
        const Divider(),
        
      ],
    );
  }
}
