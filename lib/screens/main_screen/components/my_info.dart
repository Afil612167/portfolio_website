import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/global_variable.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: GlobalVariables.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(GlobalVariables.myImage),
            ),
            Spacer(),
            Text(
              "MUHAMMED AFIL",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "FLUTTER DEVELOPER",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
