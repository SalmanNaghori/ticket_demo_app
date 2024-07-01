import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';
import 'package:ticket_demo_app/core/utils/app_route.dart';
import 'package:ticket_demo_app/core/widgets/app_double_text.dart';
import 'package:ticket_demo_app/screen/search_screen/widgets/app_text_icon.dart';
import 'package:ticket_demo_app/screen/search_screen/widgets/find_ticket.dart';
import 'package:ticket_demo_app/screen/search_screen/widgets/ticket_promotion.dart';
import 'package:ticket_demo_app/screen/search_screen/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.homeScreenBGColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are \nyou looking for?",
            style: AppStyle.headLineStyle3.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AppTicketTab(
            firstTab: "All Ticket",
            secondTab: "Hotel",
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icons: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icons: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTicket(),
          const SizedBox(height: 40),
          AppDoubleText(
            onTap: () => Navigator.pushNamed(context, AppRoute.allTickets),
            bigText: "Upcoming Flights",
            smallText: "View all",
          ),
          const SizedBox(height: 15),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
