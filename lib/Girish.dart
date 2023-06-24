import 'dart:async';
import 'package:flutter/material.dart';

import 'package:untitled4/pages.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Pages())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Container(
                  width: double.infinity,
                  height:  MediaQuery.of(context).size.height-100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage( "lib/assets/surpriz21.webp",),fit: BoxFit.cover),
                  ),
                ),

              Text("Turkmen Surprise",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Monserrat",fontSize: 25,color: Colors.blue),),
            ],
          ),],
        ),
      ),
    );
  }
}