import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlipLayoutDos extends StatelessWidget {
  const FlipLayoutDos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.VERTICAL,
      side: CardSide.FRONT,
      front: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/firebase.png',
              fit: BoxFit.cover,
            ),
          )),
      back: Container(
          width: 50.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/fire_flutter.png',
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}


/*

child: Tooltip(
                    message: 'We love to work with Flutter',

 */