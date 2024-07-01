import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/bottom_nav_bar.dart';
import 'package:ticket_demo_app/core/utils/app_route.dart';
import 'package:ticket_demo_app/screen/home/all_hotels.dart';
import 'package:ticket_demo_app/screen/home/all_ticket.dart';
import 'package:ticket_demo_app/screen/hotel_detail.dart';
import 'package:ticket_demo_app/screen/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        AppRoute.allTickets: (context) => const AllTicket(),
        AppRoute.ticketViewScreen: (context) => const TicketScreen(),
        AppRoute.allHotels: (context) => const AllHotels(),
        AppRoute.hotelDetailScreen: (context) => const HotelDetail(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBar(),
    );
  }
}
