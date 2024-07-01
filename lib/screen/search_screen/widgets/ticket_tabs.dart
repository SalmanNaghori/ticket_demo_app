import 'package:flutter/material.dart';

import 'package:ticket_demo_app/core/res/style/app_style.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTab({
    Key? key,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyle.searchBGColor,
      ),
      child: Row(
        children: [
          AppTab(
            isLeftSide: true,
            tabTitle: firstTab,
          ),
          AppTab(
            isLeftSide: false,
            tabTitle: secondTab,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  const AppTab({
    super.key,
    required this.tabTitle,
    required this.isLeftSide,
    this.tabColor = false,
  });
  final String tabTitle;
  final bool isLeftSide;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: isLeftSide
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabTitle)),
    );
  }
}
