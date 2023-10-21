import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class AvatarLayout extends StatelessWidget {
  const AvatarLayout({
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
          color: Colors.blueGrey.shade900,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/img/avatar.png',
            fit: BoxFit.cover,
          ),
        ),
        /*SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(2.0).dg,
                child: Center(
                  child: Text(
                    'Hello World! My name is Yamil, and I want help you with your dreams!',
                    style: GoogleFonts.raleway(
                        fontSize: 4.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),*/
      ),
      back: Card(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/img/super_powers.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
