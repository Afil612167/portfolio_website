
import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/global_variable.dart';

import 'my_animated_text.dart';
class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            GlobalVariables.bgImage,
            fit: BoxFit.cover,
          ),
          Container(
            color: GlobalVariables.darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: GlobalVariables.defaultPadding,
                top: GlobalVariables.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover my Amazing \nArt Space",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                MyAnimatedText(),
                Padding(
                    padding: EdgeInsets.only(
                        top: GlobalVariables.defaultPadding / 2)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'EXPLORE NOW',
                    style: TextStyle(color: GlobalVariables.darkColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalVariables.primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
