import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'layouts/button_aboutme_layout.dart';
import 'layouts/button_myexperence_layout.dart';

class ButtonsComponent extends StatelessWidget {
  const ButtonsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0).dg,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ButtonAboutme(),
          ButtonMyexperence(),
        ],
      ),
    );
  }
}
