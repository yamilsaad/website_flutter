import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipLayoutUno extends StatelessWidget {
  const FlipLayoutUno({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
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
              'assets/img/flutter.png',
              fit: BoxFit.cover,
            ),
          )),
      back: const Card(),
    );
  }
}
