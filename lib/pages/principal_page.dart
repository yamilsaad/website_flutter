import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layouts/layout.dart';
import '../widgets/widget.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PhotoPrincipalWidget(),
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0).dg,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0).dg,
                        child: Container(
                          margin: EdgeInsets.only(top: 0).dg,
                          height: 100.h,
                          width: 70.w,
                          constraints: BoxConstraints(maxHeight: 40.dg),
                          decoration: BoxDecoration(
                              color: Color(0xFF053B50),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(0.5).dg,
                            child: Center(
                              child: Text(
                                'Soy.Dev',
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.w,
                      ),

                      /*Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0).dg,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(25)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'Me',
                                        style: GoogleFonts.raleway(
                                            fontSize: 7.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0).dg,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text('My Profile',
                                        style: GoogleFonts.raleway(
                                            fontSize: 7.sp,
                                            fontWeight: FontWeight.bold)),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text('Contant',
                                        style: GoogleFonts.raleway(
                                            fontSize: 7.sp,
                                            fontWeight: FontWeight.bold)),
                                  )),
                            ),
                          ),
                        ],
                      ),*/
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0).dg,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //CuboWidget(),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      SoydevWidget(),
                      Container(
                          width: 170.w,
                          height: 400.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              //TarjetaTresdeWidget(),
                            ],
                          )),
                    ]),
                    SizedBox(
                      width: 1.w,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 40).dg,
                child: Stack(
                  children: [
                    MyskillsWidget(),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    ]);
  }
}