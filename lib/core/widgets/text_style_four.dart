import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class TextStyleFour extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final bool? isColor;
  const TextStyleFour(
      {super.key, required this.text, this.textAlign, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: isColor == null
          ? AppStyle.headLineStyle4.copyWith(
              color: Colors.white,
            )
          : AppStyle.headLineStyle4,
    );
  }
}
