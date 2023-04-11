// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio_website/constants/global_variable.dart';
import 'package:portfolio_website/models/projects.dart';
import 'package:portfolio_website/responsive.dart';

import 'components/animated_counter.dart';
import 'components/high_light.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HomeBanner(),
        Padding(
          padding: const EdgeInsets.only(
            top: GlobalVariables.defaultPadding / 2,
            bottom: GlobalVariables.defaultPadding / 2,
          ),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    HighLight(
                      counter: AnimatedCounter(count: 5, text: "+"),
                      label: 'Github Projects',
                    ),
                    SizedBox(height: GlobalVariables.defaultPadding / 2),
                    HighLight(
                      counter: AnimatedCounter(count: 1, text: " year+"),
                      label: 'Flutter experience',
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(count: 5, text: "+"),
                      label: 'Github Projects',
                    ),
                    HighLight(
                      counter: AnimatedCounter(count: 1, text: " year+"),
                      label: 'Flutter experience',
                    ),
                  ],
                ),
        ),
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(GlobalVariables.defaultPadding),
          shrinkWrap: true,
          itemCount: myProjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context)
                ? 1
                : Responsive.isMobileLarge(context)
                    ? 1
                    : Responsive.isDesktop(context)
                        ? 3
                        : 2,
            childAspectRatio: Responsive.isDesktop(context)
                ? 1.1
                : Responsive.isTablet(context)
                    ? 1.2
                    : 1.8,
            mainAxisSpacing: GlobalVariables.defaultPadding,
            crossAxisSpacing: GlobalVariables.defaultPadding,
          ),
          itemBuilder: (context, index) {
            return Container(
              // margin: const EdgeInsets.all(GlobalVariables.defaultPadding),
              color: GlobalVariables.secondaryColor,
              child: Padding(
                padding:
                    const EdgeInsets.all(GlobalVariables.defaultPadding / 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: GlobalVariables.defaultPadding,
                    ),
                    Text(
                      myProjects[index].title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      height: GlobalVariables.defaultPadding,
                    ),
                    Text(
                      myProjects[index].description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(height: 1.5),
                    ),
                    TextButton(onPressed: () {}, child: Text("Read More>>"))
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
