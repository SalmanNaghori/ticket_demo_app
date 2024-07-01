import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/media.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';
import 'package:ticket_demo_app/core/utils/all_json.dart';
import 'package:ticket_demo_app/core/utils/app_route.dart';
import 'package:ticket_demo_app/core/widgets/app_double_text.dart';
import 'package:ticket_demo_app/core/widgets/ticket_view.dart';
import 'package:ticket_demo_app/screen/home/widget/hotel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.homeScreenBGColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyle.headLineStyle3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyle.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppStyle.searchBGColor),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: AppStyle.searchIconColor,
                      ),
                      Text("search icon"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoute.allTickets),
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList.take(2).map((singleTicket) {
                      return TicketView(
                        isHomePageTicketView: true,
                        ticket: singleTicket,
                      );
                    }).toList())),
                const SizedBox(height: 40),
                AppDoubleText(
                  onTap: () => Navigator.pushNamed(context, AppRoute.allHotels),
                  bigText: "Hotel",
                  smallText: "View all",
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .map((singleHotel) =>
                                Hotel(hotelDetail: singleHotel))
                            .toList())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
