import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';



class casoss extends StatefulWidget {
  @override
  _casossState createState() => _casossState();
}

class _casossState extends State<casoss> {

  String _n_casos = "0";
  String infectados = "0";
  String obitos = "0";



  void _inforcovid ()async {

    String url =  "https://api.apify.com/v2/key-value-stores/TyToNta7jGKkpszMZ/records/LATEST?disableRedirect=true";
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {

      _n_casos = retorno ["recovered"] .toString();


    });

  }
  void _infoinfec ()async {


    String url =  "https://api.apify.com/v2/key-value-stores/TyToNta7jGKkpszMZ/records/LATEST?disableRedirect=true";
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);


    setState(() {

      infectados = retorno ["infected"] .toString();


    });



  }

  void _infoobi ()async {


    String url =  "https://api.apify.com/v2/key-value-stores/TyToNta7jGKkpszMZ/records/LATEST?disableRedirect=true";
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);


    setState(() {

      obitos = retorno ["deceased"] .toString();


    });



  }



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
                        child: Image.asset(
                          'images/medicasos.png',
                          width: 170,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topCenter,
                        ) ,
                      ),
                      Positioned(
                          top:90 ,
                          left:160 ,
                          child: Text(
                            "Covid-19 \nCasos no Brasil...",
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

          Padding(padding: EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Text(
                "Recuperados",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
              SizedBox(width: 5,),
              Icon(
                Icons.done,
              color: Colors.blue,)

            ],

          ),


          ),
          SizedBox(
            height: 10,
          ),

          Padding(padding: EdgeInsets.only(right: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text(
                  _n_casos,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                  textAlign: TextAlign.center,
                ),


              ],

            ),


          ),

          SizedBox(
            height: 18,
          ),

          Padding(padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text(
                  "Infectados",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),
                SizedBox(width: 5,),
                Icon(
                  Icons.warning,
                  color: Colors.blue,)

              ],

            ),

          ),


          SizedBox(
            height: 10,
          ),

          Padding(padding: EdgeInsets.only(right: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text(
                  _n_casos,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                  textAlign: TextAlign.center,
                ),


              ],

            ),


          ),

          SizedBox(
            height: 18,
          ),

          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text(
                  "Óbitos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),

                SizedBox(width: 5,),

                Icon(
                  Icons.close,
                  color: Colors.blue,)

              ],

            ),

          ),

          SizedBox(
            height: 10,
          ),

          Padding(padding: EdgeInsets.only(right: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text(
                  _n_casos,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                  textAlign: TextAlign.center,
                ),


              ],

            ),


          ),

          SizedBox(
            height: 5,
          ),


          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Padding(padding: EdgeInsets.only(right: 20),
              child:RaisedButton(
                onPressed: _inforcovid ,
                child: Text(
                  "Atualizar",
                  style: TextStyle(

                      fontFamily: "TheStudentsTeacher-Regular.ttf",
                      color: Colors.blue,
                      fontSize: 20

                  ),
                ),
                color: Colors.white,

              ) ,)


            ],

          )


          /////////////////////

        ],

      ),


      )

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
