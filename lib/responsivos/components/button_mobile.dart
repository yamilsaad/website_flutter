import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonsComponentMobile extends StatelessWidget {
  const ButtonsComponentMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ButtonAboutmeMobile(),
        SizedBox(
          width: 10.w,
        ),
        const ButtonMyexperenceMobile(),
      ],
    );
  }
}

class ButtonAboutmeMobile extends StatelessWidget {
  const ButtonAboutmeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: 70.h,
        width: 120.w,
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
                      padding: const EdgeInsets.only(top: 10.0).dg,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Container(
                              width: 190.w,
                              height: 165.h,
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
                            width: 190.w,
                            height: 170.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Center(
                                  child: Text(
                                'Combining art with technology is something that excites me. As Leonardo da Vinci said: Art and science can walk hand in hand❤️🎨. My inspiration comes from observation. I consider myself an observant person, very pragmatic and detail-oriented. I appreciate nature and delight in the results of great technological works of art. With Flutter I was able to find this conjunction 😊 😊 😊 ',
                                style: GoogleFonts.robotoCondensed(
                                    color: Colors.white, fontSize: 14.sp),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Ok',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 16.sp),
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
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonMyexperenceMobile extends StatelessWidget {
  const ButtonMyexperenceMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0).dg,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 70.h,
          width: 120.w,
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
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Container(
                                width: 190.w,
                                height: 165.h,
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
                              width: 190.w,
                              height: 170.h,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Center(
                                      child: Text(
                                    'On my path to the technology sector I have acquired not only experience on how to write lines of code, I have volunteered in community services, worked as a salesperson, attended to the whims of men and women in gastronomy, started small businesses, dabbled in philosophy and letters, I learned manual trades related to construction and carpentry, and I acquired the necessary skills to be able to develop in the world of Software, in addition to being a father and husband. All this experience throughout my short life has given me intuition and the ability to empathize with the people around me, and that is my main advantage. Furthermore, I have never lacked the curiosity to continue improving myself. I am everything and nothing at the same time, and that allows me to adapt, work as a team and contribute significantly to any project📱📱📱.',
                                    style: GoogleFonts.robotoCondensed(
                                        color: Colors.white, fontSize: 14.sp),
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
                                color: Colors.white, fontSize: 16.sp),
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
                'my experence',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
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
