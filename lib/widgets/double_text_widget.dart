// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:book_tickets_app/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String text_1;
  const AppDoubleTextWidget({super.key, required this.text_1});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text_1,
                style: Styles.headLineStyle2,
              ),
              GestureDetector(
                onTap: () {
                  print("${text_1} clicked");
                },
                child: Text(
                  'View All',
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
