import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../layouts/layout.dart';

class CuboWidget extends StatelessWidget {
  const CuboWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 420.h,
      constraints: BoxConstraints(maxHeight: 120.dg),
      decoration: BoxDecoration(
          color: const Color(0xFF053B50),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(2.0).dg,
        child: GridView.count(
            mainAxisSpacing: 2.dg,
            crossAxisSpacing: 2.dg,
            childAspectRatio: 1.0.sign,
            crossAxisCount: 3,
            children: const [
              AvatarLayout(),
              FlipLayoutUno(),
              FlipLayoutDos(),
              AvatarLayout(),
              FlipLayoutUno(),
              FlipLayoutDos(),
              AvatarLayout(),
              FlipLayoutUno(),

              /*SizedBox(
            width: 10.w,
          ),
          Container(
            width: 60.w,
            height: 330.h,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                Container(
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          ),*/
            ]),
      ),
    );
  }
}
