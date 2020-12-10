
import 'dart:ui';

import 'package:app_covid/telas/aja.dart';
import 'package:app_covid/telas/casos.dart';
import 'package:app_covid/telas/casos_brasil.dart';
import 'package:app_covid/telas/informe.dart';
import 'package:app_covid/telas/prepare.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MaterialApp(
  home:Home() ,
  debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pagAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      informe(),
      prepare(),
      aja(),
      casoss()
    ];

    return Scaffold(

      body:telas[_pagAtual] ,

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        fixedColor: Colors.blue,
        currentIndex: _pagAtual,
        onTap: (page){

          setState(() {
            _pagAtual = page;
          });

        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(title:Text("Informe-se",style: TextStyle(fontWeight: FontWeight.bold),) ,icon: Icon(Icons.info)),
          BottomNavigationBarItem(title:Text("Prepare-se",style: TextStyle(fontWeight: FontWeight.bold),) ,icon: Icon(Icons.directions_run)),
          BottomNavigationBarItem(title:Text("Aja", style: TextStyle(fontWeight: FontWeight.bold),) ,icon: Icon(Icons.accessibility_new)),
          BottomNavigationBarItem(title:Text("Casos Brasil", style: TextStyle(fontWeight: FontWeight.bold),) ,icon: Icon(Icons.add_alert)),

        ],

      ),

    );
  }
}







