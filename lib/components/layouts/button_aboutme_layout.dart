import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAboutme extends StatelessWidget {
  const ButtonAboutme({
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
                    surfaceTintColor: Color.fromARGB(255, 25, 115, 179),
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
                                width: 150.w,
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
                            Container(
                              width: 150.w,
                              height: 170.h,
                              constraints: BoxConstraints(maxHeight: 50.dg),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Center(
                                    child: Text(
                                  'Combinar el arte con la tecnología es algo que me apsiona. Como dijera Leonardo Davinci: El Arte y la Tecnología pueden ir de la mano❤️🎨. Mi inspiración viene de la observación. Me considero una persona observadora, muy pragmática y detallista. Aprecio la naturaleza y me deleito en los resultados de las grandes obras de arte tecnológicas. Con Flutter he podido encontrar esta conjuncion 😊 😊 😊 ',
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.white, fontSize: 5.sp),
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
                                color: Colors.white, fontSize: 8.sp),
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
                  fontSize: 5.sp,
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
