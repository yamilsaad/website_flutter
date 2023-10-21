import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonsComponentTablet extends StatelessWidget {
  const ButtonsComponentTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ButtonAboutmeTablet(),
        SizedBox(
          width: 3.w,
        ),
        const ButtonMyexperenceTablet(),
      ],
    );
  }
}

class ButtonAboutmeTablet extends StatelessWidget {
  const ButtonAboutmeTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0).dg,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 40.h,
          width: 50.w,
          constraints: BoxConstraints(maxHeight: 18.dg),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.black54,
                    surfaceTintColor: const Color.fromARGB(255, 25, 115, 179),
                    //title: Text('About me'),
                    //content: Text('Contenido'),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(2.0).dg,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Container(
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/banneruno.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Divider(
                              height: 2.h,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 200.w,
                              height: 220.h,
                              //constraints: BoxConstraints(maxHeight: 50.dg),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Center(
                                    child: Text(
                                  'Combining art with technology is something that excites me. As Leonardo da Vinci said: Art and science can walk hand in hand❤️🎨. My inspiration comes from observation. I consider myself an observant person, very pragmatic and detail-oriented. I appreciate nature and delight in the results of great technological works of art. With Flutter I was able to find this conjunction 😊 😊 😊 ',
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.white, fontSize: 12.sp),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Ok',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 12.sp),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Center(
              child: Text(
                'about me',
                style: TextStyle(
                  fontSize: 7.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonMyexperenceTablet extends StatelessWidget {
  const ButtonMyexperenceTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0).dg,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 40.h,
          width: 50.w,
          constraints: BoxConstraints(maxHeight: 18.dg),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.black54,
                    surfaceTintColor: const Color.fromARGB(255, 25, 115, 179),
                    //title: Text('About me'),
                    //content: Text('Contenido'),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(2.0).dg,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Container(
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/notebook.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Divider(
                              height: 2.h,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 200.w,
                              height: 220.h,
                              //constraints: BoxConstraints(maxHeight: 50.dg),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Center(
                                      child: Text(
                                    'On my path to the technology sector I have acquired not only experience on how to write lines of code, I have volunteered in community services, worked as a salesperson, attended to the whims of men and women in gastronomy, started small businesses, dabbled in philosophy and letters, I learned manual trades related to construction and carpentry, and I acquired the necessary skills to be able to develop in the world of Software, in addition to being a father and husband. All this experience throughout my short life has given me intuition and the ability to empathize with the people around me, and that is my main advantage. Furthermore, I have never lacked the curiosity to continue improving myself. I am everything and nothing at the same time, and that allows me to adapt, work as a team and contribute significantly to any project📱📱📱.',
                                    style: GoogleFonts.robotoCondensed(
                                        color: Colors.white, fontSize: 12.sp),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Ok',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 12.sp),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Center(
              child: Text(
                'pathway',
                style: TextStyle(
                  fontSize: 7.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
