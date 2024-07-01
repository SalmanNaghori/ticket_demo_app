import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText, required this.onTap,
  });
  final String bigText;
  final String smallText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyle.headLineStyle2,
        ),
        InkWell(
          onTap: () {
           onTap();
          },
          child: Text(
            smallText,
            style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
          ),
        ),
      ],
    );
  }
}
