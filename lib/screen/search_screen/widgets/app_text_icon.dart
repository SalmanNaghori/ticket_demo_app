import 'package:flutter/material.dart';

import 'package:ticket_demo_app/core/res/style/app_style.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icons;
  final String text;
  const AppTextIcon({
    Key? key,
    required this.icons,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icons,
            color: AppStyle.planeColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyle.textStyle,
          )
        ],
      ),
    );
  }
}
