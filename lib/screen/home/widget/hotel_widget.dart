import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotelDetail;
  const Hotel({super.key, required this.hotelDetail});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyle.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("assets/images/${hotelDetail["image"]}"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotelDetail["place"],
              style: AppStyle.headLineStyle1.copyWith(
                color: AppStyle.kakiColor,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotelDetail["destination"],
              style: AppStyle.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotelDetail["price"]}/night",
              style: AppStyle.headLineStyle1.copyWith(
                color: AppStyle.kakiColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
