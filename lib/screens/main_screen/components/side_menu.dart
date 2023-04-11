import 'package:portfolio_website/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio_website/constants/global_variable.dart';

import 'area_info_text.dart';
import 'coding_area.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skill_area.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: GlobalVariables.maxWidth),
      color: GlobalVariables.bgColor,
      child: Drawer(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: GlobalVariables.defaultPadding / 2),
                      child: AreaInfoText(
                        text: 'Nationality',
                        title: 'Indian',
                      ),
                    ),
                    AreaInfoText(
                      text: 'City',
                      title: 'Calicut',
                    ),
                    AreaInfoText(
                      text: 'Age',
                      title: '18',
                    ),
                    const Divider(),
                    const SkillArea(),
                    const CodingArea(),
                    const Knowledges(),
                    Padding(
                      padding: const EdgeInsets.all(
                          GlobalVariables.defaultPadding / 2),
                      child: TextButton(
                          onPressed: () {
                            launchURL(
                                "https://drive.google.com/file/d/1-gk9YyrEIjonwMA0bWsXkSXAuWEq5pI4/view");
                            // setState(() {

                            // });
                          },
                          child: Container(
                            color: GlobalVariables.secondaryColor,
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    "DOWNLOAD CV",
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  SizedBox(
                                    width: GlobalVariables.defaultPadding / 2,
                                  ),
                                  SvgPicture.asset(
                                      GlobalVariables.downloadIcon),
                                ],
                              ),
                            ),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.all(
                          GlobalVariables.defaultPadding / 2),
                      color: GlobalVariables.secondaryColor,
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                launchURL(
                                    "https://twitter.com/Psychod49592076");
                              },
                              icon: SvgPicture.asset(
                                  GlobalVariables.twitterIcon)),
                          IconButton(
                              onPressed: () {
                                launchURL('https://github.com/Afil612167');
                              },
                              icon:
                                  SvgPicture.asset(GlobalVariables.githubIcon)),
                          IconButton(
                              onPressed: () {
                                launchURL('https://www.linkedin.com/in/afil-4a6938258/?original_referer=');
                              },
                              icon:
                                  SvgPicture.asset(GlobalVariables.linkedIcon)),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
