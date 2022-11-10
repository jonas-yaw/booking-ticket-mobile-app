// ignore_for_file: avoid_unnecessary_containers

import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Weather status */
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Accra',
                  style: Styles.headLineStyle3.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '31\u00B0',
                  style: Styles.headLineStyle3.copyWith(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Now',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Icon(
                    Icons.wb_sunny_rounded,
                    color: Colors.amber[700],
                    size: 40,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    '31\u00B0',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1PM',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Icon(
                    Icons.wb_sunny_rounded,
                    color: Colors.amber[700],
                    size: 40,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    '31\u00B0',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2PM',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  const Icon(
                    Icons.wb_cloudy_rounded,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    '28\u00B0',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '3PM',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  const Icon(
                    Icons.wb_cloudy_rounded,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    '29\u00B0',
                    style: Styles.headLineStyle3.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            /* Additional Info */
          ],
        ),
      ),
    );
  }
}
