// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({
    Key? key,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : AppStyle.dotColor,
          )),
    );
  }
}
