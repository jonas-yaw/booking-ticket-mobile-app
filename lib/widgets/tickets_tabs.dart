import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  // ignore: non_constant_identifier_names
  final String SecondTab;
  const TicketTabs(
      {super.key, required this.firstTab, required this.SecondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      // ignore: sort_child_properties_last
      child: Row(
        children: [
          /* airline tickets */
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50))),
            ),
            child: Center(child: Text(SecondTab)),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD)),
    );
  }
}
