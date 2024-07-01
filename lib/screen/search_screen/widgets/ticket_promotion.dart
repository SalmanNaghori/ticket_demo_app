import 'package:flutter/material.dart';
import 'package:ticket_demo_app/core/res/media.dart';
import 'package:ticket_demo_app/core/res/style/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 435,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width * 0.42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppMedia.planeSit))),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "20%\ndiscount on early booking flight. Don't miss",
                style: AppStyle.headLineStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  height: 210,
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    color: const Color(0xff3AB8B8),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount \nfor survey",
                        style: AppStyle.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyle.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: AppStyle.circleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 18,
              ),
              height: 210,
              width: size.width * 0.44,
              decoration: BoxDecoration(
                color: Color(0xffec6545),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style:
                        AppStyle.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                      TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                      TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                    ]),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
