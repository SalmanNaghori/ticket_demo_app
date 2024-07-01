import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import 'package:ticket_demo_app/core/res/media.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';
import 'package:ticket_demo_app/core/utils/all_json.dart';
import 'package:ticket_demo_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_demo_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_demo_app/core/widgets/ticket_view.dart';
import 'package:ticket_demo_app/screen/search_screen/widgets/ticket_tabs.dart';
import 'package:ticket_demo_app/screen/ticket/widgets/ticket_position_circle.dart';

class TicketScreen extends StatefulWidget {
  // final List<Map<String, dynamic>> listOfTicket;
  const TicketScreen({
    Key? key,
    // required this.listOfTicket,
  }) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var arg = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = arg["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.homeScreenBGColor,
        centerTitle: true,
        title: const Text(
          "Tickets ",
        ),
      ),
      backgroundColor: AppStyle.homeScreenBGColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // const Text(
              //   "Tickets ",
              //   style: AppStyle.headLineStyle1,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              const AppTicketTab(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              const SizedBox(
                height: 20,
              ),
              //white and black color ticket
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                  isHomePageTicketView: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyle.ticketColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: "Flutter Bd",
                          secondText: "Passenger",
                          crossAxisAlignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          firstText: "5221 36869",
                          secondText: "Passport",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: "98765 4321 123456",
                          secondText: "Number of E-Ticket",
                          crossAxisAlignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          firstText: "B46859",
                          secondText: "Booking Code",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  "*** 2462",
                                  style: AppStyle.headLineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Payment menthod",
                              style: AppStyle.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnTextLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //bottom details
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                  color: AppStyle.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 80,
                      data: "www.google.come",
                      barcode: Barcode.code128(),
                      width: double.infinity,
                      drawText: false,
                    ),
                  ),
                ),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isHomePageTicketView: true,
                ),
              ),
            ],
          ),
          const TicketCirClePosition(
            pos: true,
          ),
          const TicketCirClePosition(
            pos: false,
          ),
        ],
      ),
    );
  }
}
