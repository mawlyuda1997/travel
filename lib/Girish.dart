import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled4/klaslar.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Image.asset(
              "lib/assets/turkmentravellogo1.png",
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("\u00a9 2023 Turkmenistan Tourism",style: TextStyle(color: Color.fromRGBO( 108, 163, 187,1),),
              ),)
          ],
        ),
      ),
    );
  }
}