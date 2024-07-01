import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyle.findTicketColor,
      ),
      child: Center(
        child: Text(
          "Find tickets",
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
