import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';
import 'package:ticket_demo_app/core/utils/all_json.dart';
import 'package:ticket_demo_app/core/utils/app_route.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All hotel"),
        centerTitle: true,
        backgroundColor: AppStyle.homeScreenBGColor,
      ),
      backgroundColor: AppStyle.homeScreenBGColor,
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              return HotelGridView(
                hotelDetail: hotelList[index],
              );
            }),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotelDetail;
  const HotelGridView({super.key, required this.hotelDetail});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.hotelDetailScreen);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 8),
        // width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
          color: AppStyle.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyle.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/${hotelDetail["image"]}"))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotelDetail["place"],
                style: AppStyle.headLineStyle3.copyWith(
                  color: AppStyle.kakiColor,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    hotelDetail["destination"],
                    style: AppStyle.headLineStyle3.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "\$${hotelDetail["price"]}/night",
                    style: AppStyle.headLineStyle4.copyWith(
                      color: AppStyle.kakiColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
