import 'package:flutter/material.dart';

class aja extends StatefulWidget {
  @override
  _ajaState createState() => _ajaState();
}

class _ajaState extends State<aja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   body: Container(

     child: Column(

       children: <Widget>[

         ClipPath(
           clipper:Clipper(),
           child: Container(
             padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
             height: 350,
             width: double.infinity,
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [Color(0XFF3383CD),Color(0XFF11249F),],
                 begin:Alignment.topRight ,
                 end:Alignment.bottomLeft,

               ),
               image: DecorationImage(image: AssetImage('images/virus.png'),

               ),
             ),
             child:  Column(
               children: <Widget>[

                 SizedBox(
                   height: 20,
                 ),
                 Expanded(child: Stack(

                   children: <Widget>[

                     Padding(padding: EdgeInsets.only(right: 170, top: 20),
                       child: Image.asset(
                         'images/doctor.png',
                         width: 300,
                         height: 300,

                       ) ,
                     ),
                     Positioned(
                         top:90 ,
                         left:200 ,
                         child: Text(
                           "Covid-19 \nComo posso agir?",
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 30,
                               fontFamily: "TheStudentsTeacher",
                               color: Colors.white
                           ),
                         )
                     )


                   ],

                 )
                 )




               ],
             ),




           ),


         ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Row(

              children: <Widget>[

                Text(
                    "Formas de ação",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                ),

                Image.network("https://web4med.com.br/wp-content/uploads/2018/03/Medico-Logo-1.png",
                height: 28,
                width: 28,)


              ],

            )

          ],

        ),
        ),

         SizedBox(
           height: 20,
         ),

        Padding(padding: EdgeInsets.symmetric(horizontal:20 ),
        child:Row(
          children: <Widget>[

            Image.network("https://www.institutoncologicofalp.cl/wp-content/uploads/2020/03/icono_prevencion_5.png",
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 10,
            ),
            
            Text(
                "Evite contato físico com pessoas que \ntenham sintomas da gripe",
              style: TextStyle(
                fontSize: 16.4,
                fontWeight: FontWeight.bold

              ),
            )


          ],
        ) ,
        ),
         SizedBox(
           height: 10,
         ),

         Padding(padding: EdgeInsets.symmetric(horizontal:20 ),
           child:Row(
             children: <Widget>[

               Image.network("https://www.institutoncologicofalp.cl/wp-content/uploads/2020/03/icono_prevencion_4.png",
                 height: 50,
                 width: 50,
               ),
               SizedBox(
                 width: 10,
               ),

               Text(
                 "Evite tocar os olhos, o nariz e a boca\n com as mãos sem lavá-las",
                 style: TextStyle(
                     fontSize: 16.4,
                     fontWeight: FontWeight.bold

                 ),
               )


             ],
           ) ,
         ),

         SizedBox(
           height: 10,
         ),

         Padding(padding: EdgeInsets.symmetric(horizontal:20 ),
           child:Row(
             children: <Widget>[

               Image.network("https://www.institutoncologicofalp.cl/wp-content/uploads/2020/03/icono_prevencion_6.png",
                 height: 50,
                 width: 50,
               ),
               SizedBox(
                 width: 10,
               ),

               Text(
                 "Evite compartilhar artigos de uso pessoal.\nLimpe e desinfete objetos e superfícies",
                 style: TextStyle(
                     fontSize: 15.0,
                     fontWeight: FontWeight.bold

                 ),
               )


             ],
           ) ,
         ),

         SizedBox(
           height: 10,
         ),

         Padding(padding: EdgeInsets.symmetric(horizontal: 40),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,

           children: <Widget>[

             Image.network(
                 "http://abali.ru/wp-content/uploads/2020/04/instagram-stay-home-logo.png",
               height: 45,
               width: 45,
             ),

             Text(
                 "FIQUE EM CASA",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
                 fontFamily: "TheStudentsTeacher",

               ),
             ),

             Image.network(
               "http://abali.ru/wp-content/uploads/2020/04/instagram-stay-home-logo.png",
               height: 45,
               width: 45,
             ),

           ],

         ),
         )




       ],

     ),

   ),




    );
  }
}


class Clipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0.0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width,size.height-80);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}