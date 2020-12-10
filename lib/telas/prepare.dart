import 'package:flutter/material.dart';

class prepare extends StatefulWidget {
  @override
  _prepareState createState() => _prepareState();
}

class _prepareState extends State<prepare> {
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

                        Padding(padding: EdgeInsets.only(right: 230),
                          child: Image.network(
                            'https://www.pinclipart.com/picdir/big/23-231394_mdico-hospital-doentes-e-etc-nursing-clipart.png',
                            width: 170,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.topCenter,
                          ) ,
                        ),
                        Positioned(
                            top:90 ,
                            left:160 ,
                            child: Text(
                              "Covid-19 \nComo me preparar?",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              Row(
                children: <Widget>[

                  Text(
                    "Prepare-se",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.directions_run,
                  color: Color(0XFF3383CD),)

                ],
              ),

            ],

          ),
          ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: <Widget>[

                  Image.network(
                      "https://nacoesunidas.org/wp-content/uploads/2014/10/WHO_Logo_c300.png",
                    height: 40,
                    width: 40,
                  ),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      "Informe-se por fontes confiáveis",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  )


                ],
              ),
            ),

            SizedBox(height: 15,),
            
            Padding(padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                
                children: <Widget>[
                  
                  Image.network(
                    "https://www.imagenspng.com.br/wp-content/uploads/2020/05/coronavirus-lavar-as-maos-png-01.png",
                    height: 40,
                    width: 40,
                  ),
                  
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Lave as mãos frequentemente com \nágua e sabão ou use álcool em gel 70%",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.3
                  ),
                  ),
                  )
                  
                ],
                
              ),
            ),

            SizedBox(height: 15,),

            Padding(padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Image.network(
                    "https://images.vexels.com/media/users/3/193268/isolated/preview/ff230b5ac73e6067347f963d602f3365-covid-19-sintomas-sintoma-cotovelo-tosse-by-vexels.png",
                  height:60 ,
                  width:60 ,
                ),
                Image.network(
                  "https://images.vexels.com/media/users/3/193273/isolated/preview/51a67df9096a7ea9e528ffdbbd19e16e-covid-19-personagem-sintoma-dor-de-garganta-by-vexels.png",
                  height:60 ,
                  width:60 ,
                ),
                Image.network(
                  "https://images.vexels.com/media/users/3/193272/isolated/preview/e1b8325ba516916a2c40186e4e65ae6c-covid-19-personagem-sintoma-coriza-by-vexels.png",
                  height:60 ,
                  width:60 ,
                ),
                Image.network(
                  "https://images.vexels.com/media/users/3/193282/isolated/preview/30ba23818e92cd954b297f57b3c7283a-covid-19-dor-de-cabe--a-de-sintoma-by-vexels.png",
                  height:60 ,
                  width:60 ,
                ),

              ],
            ),
            ),
            SizedBox(
              height: 5,
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                    "Cubra a boca com o antebraço quando tossir ou\n espirrar ou utilize um lenço descartável e, em\n seguida, jogue no lixo e lave as mãos",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,
                )

              ],
            ),)


            

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