import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double? width;
  final bool? isColor;
  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, this.width, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraint) {
        // Print the available width in the debug console
        debugPrint("${constraint.constrainWidth().floor()}");

        // Calculate the number of children based on the available width and randomDivider
        int numberOfChildren =
            (constraint.constrainWidth() / randomDivider).floor();

        // Build the Flex widget with the calculated number of children
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            numberOfChildren,
            (index) => SizedBox(
              width: width ?? 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.white : Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
