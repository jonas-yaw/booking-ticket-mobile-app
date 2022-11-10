import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  final Map<String, dynamic> destinationsAvailable;
  const Locations({super.key, required this.destinationsAvailable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: Text(
          destinationsAvailable['destination'].toString(),
          style:
              Styles.headLineStyle4.copyWith(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
