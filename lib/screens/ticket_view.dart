import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: isColor == null ? AppLayout.getHeight(200) : null,
      child: Container(
        margin: isColor == null
            ? EdgeInsets.only(right: AppLayout.getHeight(10))
            : null,
        child: Column(
          children: [
            /* showing the blue part of the ticket */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.blue : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(17),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      ),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 10)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : const Color(0xFF8ACCF7)),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFFBACCF7))),
                          ),
                        ],
                      )),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4.copyWith(
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle4.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.right,
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4.copyWith(
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /* showing the orange part of the ticket */
            Container(
              color: isColor == null ? Colors.orange : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:
                              isColor == null ? Styles.bgColor : Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          )),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade300),
                                  ),
                                ),
                              )),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:
                              isColor == null ? Styles.bgColor : Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          )),
                    ),
                  )
                ],
              ),
            ),
            /* showing the below portion of the ticket */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0),
                      bottomRight: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0))),
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /* first child */
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          Text(
                            'Date',
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4.copyWith(
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4.copyWith(
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          Text(
                            'Number',
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4.copyWith(
                                    color: Colors.grey,
                                  ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
