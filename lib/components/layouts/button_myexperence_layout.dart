import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMyexperence extends StatelessWidget {
  const ButtonMyexperence({
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
                            Container(
                              width: 150.w,
                              height: 170.h,
                              constraints: BoxConstraints(maxHeight: 50.dg),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Center(
                                      child: Text(
                                    'En mi camino hacia el sector tecnológico he adquirido no solo experiencia sobre cómo escribir líneas de código, he sido voluntario en servicios comunitarios, trabajé como vendedor, atendí los caprichos de hombres y mujeres en la gastronomía, emprendí pequeños negocios, incursioné en la filosofía y las letras, aprendí oficios manuales relacionados a la construcción y la carpitenría, y adquirí las habilidades necesarias para poder desarrollarme en el munedo del Software, además de ser padre y esposo. Toda esta experiencia a lo largo de mi corta vida me ha dado la intuición y la capacidad de empatizar con las personas que me rodean, y esa es mi principal ventaja. Además nunca me ha faltado la curiosidad para seguir perfeccionándome. Soy todo y nada a la vez, y eso me permite adaptarme, trabajar en equipo y aportar de manera significativa a cualquier proyecto📱📱📱.',
                                    style: GoogleFonts.robotoCondensed(
                                        color: Colors.white, fontSize: 5.sp),
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
                'my experence',
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
