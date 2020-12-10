import 'package:flutter/material.dart';

class informe extends StatefulWidget {
  @override
  _informeState createState() => _informeState();
}

class _informeState extends State<informe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

                        Padding(padding: EdgeInsets.only(right: 230),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2017/01/31/22/06/boy-2027615_960_720.png',
                            width: 150,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.topCenter,
                          ) ,
                        ),
                        Positioned(
                            top:90 ,
                            left:160 ,
                            child: Text(
                              "Covid-19 \nComo me informar?",
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


           Padding(
               padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[

                 Row(
                   children: <Widget>[
                     Text("Sintomas",
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.bold,

                       ),
                       textAlign: TextAlign.start,),

                     ClipOval(
                         child: Padding(padding: EdgeInsets.symmetric(horizontal: 2),
                           child: Image.asset("images/oi.jpg",
                             height: 40,
                             width: 40,),)
                     ),
                   ],
                 ),

                 SizedBox(
                   height: 20,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Image.asset("images/tossee.png"),
                     Image.asset("images/febre.png"),
                     Image.asset("images/cabeca.png"),
                   ],
                 ),

                SizedBox(
                  height: 5,
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[

                     Text(
                       "Dor de cabeça",
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                     Padding(padding: EdgeInsets.only(right: 10),
                     child:Text(
                         "Febre",
                         style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold
                         ),
                         textAlign: TextAlign.center,
                         )
                     ),
                     Text(
                       "Tosse seca",
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold
                       ),
                     ),

                   ],
                 ),

                    SizedBox(
                      height: 20,
                    ),
                 Text(
                   'Transmissão',
                   style: TextStyle(
                     fontSize: 21,
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                Row(
                  children: <Widget>[
                    ClipOval(
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Image.asset("images/transmi.png",
                            height: 60,
                            width: 60,),)
                    ),

                    Text("Pelo contato pessoal próximo com pessoas\n infectadas ou por meio de tosse ou espirro \n de pessoas infectadas.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    )

                  ],
                )

               ],
             )
           ),






        ],

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
