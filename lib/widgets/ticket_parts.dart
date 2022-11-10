// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketPart extends StatelessWidget {
  final String topLeftText;
  final String topRightText;
  final String bottomLeftText;
  final String bottomRightText;
  final bool? isColor;
  final bool? isColorBg;

  const TicketPart({
    super.key,
    required this.topLeftText,
    required this.topRightText,
    required this.bottomLeftText,
    required this.bottomRightText,
    this.isColor,
    this.isColorBg,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        decoration: BoxDecoration(
          color: isColorBg == null ? Colors.white : Colors.transparent,
        ),
        padding:
            const EdgeInsets.only(top: 25, bottom: 25, left: 17, right: 17),
        child: Column(
          children: [
            Row(
              children: [
                isColor == null
                    ? Container()
                    : Image.asset(
                        'assets/images/visa.png',
                        scale: 11,
                      ),
                Text(topLeftText,
                    style: Styles.headLineStyle3.copyWith(
                      color: Colors.black,
                    )),
                const Spacer(),
                Text(
                  topRightText,
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                )
              ],
            ),
            const Gap(3),
            Row(
              children: [
                Text(bottomLeftText,
                    style: Styles.headLineStyle4.copyWith(
                      color: Colors.grey,
                    )),
                const Spacer(),
                Text(
                  bottomRightText,
                  style: Styles.headLineStyle4.copyWith(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
