import 'package:flutter/material.dart';

import '../../../core/res/style/app_style.dart';

class TicketCirClePosition extends StatelessWidget {
  final bool? pos;
  const TicketCirClePosition({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == true ? 22 : null,
      right: pos == false ? 22 : null,
      top: 253,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: AppStyle.textColor,
          ),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
