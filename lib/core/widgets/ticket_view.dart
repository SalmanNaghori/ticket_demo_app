import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';
import 'package:ticket_demo_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_demo_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_demo_app/core/widgets/big_circle.dart';
import 'package:ticket_demo_app/core/widgets/big_dot.dart';
import 'package:ticket_demo_app/core/widgets/text_style_four.dart';
import 'package:ticket_demo_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isHomePageTicketView;
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.isHomePageTicketView = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: isHomePageTicketView ? 16 : 0),
        child: Column(
          children: [
            //blue part of this ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyle.ticketBlueColor
                      : AppStyle.ticketColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )),
              child: Column(
                children: [
                  // show departure and destination with icon first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Icon(
                            FluentSystemIcons.ic_fluent_airplane_filled,
                            color: isColor == null
                                ? Colors.white
                                : AppStyle.planeSecondColor,
                          ))
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket['to']['code'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // show departure and destination name with time
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFour(
                            text: ticket['from']['name'],
                            isColor: isColor,
                          )),
                      Expanded(child: Container()),
                      TextStyleFour(
                        text: ticket['flying_time'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFour(
                          text: ticket['to']['name'],
                          isColor: isColor,
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            //circles
            Container(
              color: isColor == null
                  ? AppStyle.ticketOrangeColor
                  : AppStyle.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),

            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyle.ticketOrangeColor
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                  )),
              child: Column(
                children: [
                  // show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure time",
                        isColor: isColor,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        isColor: isColor,
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
