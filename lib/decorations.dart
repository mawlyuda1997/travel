import 'package:flutter/material.dart';


class Decor extends StatefulWidget {
  const Decor({Key? key}) : super(key: key);

  @override
  State<Decor > createState() => _DecorState();
}

class _DecorState extends State<Decor > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.red,
        title: Center(child: Text("Decoration",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Monserrat'),)),),
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
                        suratUcin(150,(MediaQuery.of(context).size.width/2),3),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Decoration"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),1),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Decoration"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        suratUcin(150,(MediaQuery.of(context).size.width/2),2),
                        SizedBox(height: 10,),
                        asakyText(20,150,"Decoration"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),4),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Decoration"),
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
                        asakyText(20,150,"Decoration"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),6),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Decoration"),
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
                        asakyText(20,150,"Decoration"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),8),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Decoration"),
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
        color: Colors.redAccent,
      ),
      child: Center(
        child: Text(s,style: TextStyle(
          fontFamily: "Monserrat",fontSize: 14,color: Colors.white,
        ),),
      ),
    );
  }

  InkWell suratUcin(double h,double w,int i) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Container(child:Image.asset('lib/assets/decor$i.webp'),)));
      },
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/decor$i.webp'),fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
