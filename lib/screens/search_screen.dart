import 'package:book_tickets_app/utils/app_info_list.dart';
import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:book_tickets_app/widgets/double_text_widget.dart';
import 'package:book_tickets_app/widgets/locations.dart';
import 'package:book_tickets_app/widgets/tickets_tabs.dart';
import 'package:book_tickets_app/widgets/weather_app.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        // ignore: avoid_unnecessary_containers
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(AppLayout.getHeight(80)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            const TicketTabs(
              firstTab: 'Airline Tickets',
              SecondTab: 'Hotels',
            ),
            Gap(AppLayout.getHeight(20)),
            /* departure field search */

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.flight_takeoff_rounded),
                    hintText: 'Departure',
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(16)),
            /* arrival field search */
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.flight_land_rounded),
                    hintText: 'Arrival',
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(16)),
            /* find tickets */
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF00bfff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Find tickets',
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                )),
              ),
            ),
            Gap(AppLayout.getHeight(35)),
            const AppDoubleTextWidget(text_1: 'Based on your location'),
            Gap(AppLayout.getHeight(20)),
            /* Weather */

            WeatherApp(),

            /* Avaiable destinations */
            Gap(AppLayout.getHeight(20)),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Avaialable Destinations',
                    style: Styles.headLineStyle2.copyWith(
                      color: Colors.brown[700],
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Wrap(
                    spacing: 15,
                    children: availableDestinations
                        .map((dest) => Locations(destinationsAvailable: dest))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
