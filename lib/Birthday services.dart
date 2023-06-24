import 'package:flutter/material.dart';
import 'package:untitled4/Bash sahypa.dart';



class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.green,
        title: Center(child: Text("Birhday Services",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Monserrat'),)),),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        suratUcin(150,(MediaQuery.of(context).size.width/2),1),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Birhday venue"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),2),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Birhday venue"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        suratUcin(150,(MediaQuery.of(context).size.width/2),5),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Birhday car"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),6),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Birhday car"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        suratUcin(150,(MediaQuery.of(context).size.width/2),7),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Decorations"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),8),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Decorations"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        suratUcin(150,(MediaQuery.of(context).size.width/2),3),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Wedding dresses"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),9),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Wedding dresses"),
                  ],),
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }

  Container asakyText(double h,double w,String s) {
    return Container(height: h,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green,
      ),
      child: Center(
        child: Text(s,style: TextStyle(
          fontFamily: "Monserrat",fontSize: 14,color: Colors.white,
        ),),
      ),
    );
  }

  Container suratUcin(double h,double w,int i) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/birthday$i.webp'),fit: BoxFit.cover,
        ),
      ),
    );
  }
}

