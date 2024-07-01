import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/utils/all_json.dart';
import 'package:ticket_demo_app/core/utils/app_route.dart';

import '../../core/widgets/ticket_view.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Ticket"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      var index = ticketList.indexOf(singleTicket);
                      gotoTicketDetailScreen(context, index);
                    },
                    child: TicketView(
                      ticket: singleTicket,
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  void gotoTicketDetailScreen(BuildContext context, int index) {
    Navigator.pushNamed(context, AppRoute.ticketViewScreen, arguments: {
      "index": index,
    });
  }
}
