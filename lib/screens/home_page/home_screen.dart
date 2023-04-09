// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio_website/constants/global_variable.dart';

import 'components/animated_counter.dart';
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HighLight(
                counter: AnimatedCounter(count: 5, text: "+"),
                label: 'Github Projects',
              ),
              HighLight(
                counter: AnimatedCounter(count: 1, text: "Year+"),
                label: 'Flutter work experience',
              ),
            ],
          ),
        ),
        // HighLight(
        //   counter: AnimatedCounter(count: 5, text: "+"),
        //   label: 'Github Projects',
        // ),
      ],
    );
  }
}

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
        AnimatedCounter(
          count: 100,
          text: '+',
        ),
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
