// ignore_for_file: avoid_unnecessary_containers

import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets_app/screens/ticket_view.dart';
import 'package:book_tickets_app/utils/app_info_list.dart';
import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:book_tickets_app/widgets/ticket_parts.dart';
import 'package:book_tickets_app/widgets/tickets_tabs.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(AppLayout.getHeight(80)),
            Text(
              "Tickets",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            const TicketTabs(firstTab: 'Upcoming', SecondTab: 'Previous'),
            Gap(AppLayout.getHeight(30)),
            Container(
              child: Column(
                children: [
                  TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                  const TicketPart(
                    topLeftText: 'Jonas Yaw',
                    topRightText: '2212-923-12',
                    bottomLeftText: 'Passenger',
                    bottomRightText: 'Passport',
                  ),
                  const TicketPart(
                    topLeftText: '0023 233 2133',
                    topRightText: 'BS122F',
                    bottomLeftText: 'E-Ticket Number',
                    bottomRightText: 'Booking code',
                  ),
                  const TicketPart(
                    topLeftText: ' *** 2363',
                    topRightText: '\$249.99',
                    bottomLeftText: 'Payment Method',
                    bottomRightText: 'Price',
                    isColor: true,
                  ),
                  SizedBox(
                    width: size.width * 0.85,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21))),
                      padding: const EdgeInsets.only(
                          top: 25, bottom: 25, left: 17, right: 17),
                      child: BarcodeWidget(
                        data: 'https://github.com/martinovovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  )
                  /* Barcode */
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            TicketView(ticket: ticketList[0]),
          ],
        ),
      ]),
    );
  }
}
