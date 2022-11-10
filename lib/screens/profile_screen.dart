// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:book_tickets_app/widgets/ticket_parts.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'Kumasi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(10),
                        vertical: AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight((100))),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(6)),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('Edit tapped'),
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(15)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    )),
              ),
              Positioned(
                right: -45,
                top: -45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 30,
                        color: const Color(0xFF264CD2),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights this year',
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            child: Column(
              children: [
                Text(
                  '198200',
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.85,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 1, left: 17, right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Miles accrued',
                          style: Styles.headLineStyle3,
                        ),
                        Text(
                          '10 Nov 2022',
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const TicketPart(
                  topLeftText: '23 042',
                  topRightText: 'Airline CO',
                  bottomLeftText: 'Miles',
                  bottomRightText: 'Received from',
                  isColorBg: true,
                ),
                const TicketPart(
                  topLeftText: '24',
                  topRightText: 'McDonald\'s',
                  bottomLeftText: 'Miles',
                  bottomRightText: 'Received from',
                  isColorBg: true,
                ),
                const TicketPart(
                  topLeftText: '52 922',
                  topRightText: 'Exuma',
                  bottomLeftText: 'Miles',
                  bottomRightText: 'Received from',
                  isColorBg: true,
                ),
                Text(
                  'How to get more miles',
                  style: Styles.headLineStyle3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
