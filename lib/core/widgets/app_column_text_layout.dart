import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/widgets/text_style_four.dart';
import 'package:ticket_demo_app/core/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String firstText;
  final CrossAxisAlignment? crossAxisAlignment;
  final String secondText;
  final bool? isColor;

  const AppColumnTextLayout(
      {super.key,
      this.isColor,
      required this.firstText,
      required this.secondText,
      this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        TextStyleThird(
          text: firstText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFour(text: secondText, isColor: isColor),
      ],
    );
  }
}
