import 'package:flutter/material.dart';



class BirthdayPage extends StatefulWidget {
  const BirthdayPage({Key? key}) : super(key: key);

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
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
                        createImage(150,(MediaQuery.of(context).size.width/2),1),
                        SizedBox(height: 10,),
                        createText(20,150,"Birhday party"),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),2),
                    SizedBox(height: 10,),
                    createText(20,150,"Birhday party"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        createImage(150,(MediaQuery.of(context).size.width/2),5),
                        SizedBox(height: 10,),
                        createText(20,150,"Birhday car"),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),6),
                    SizedBox(height: 10,),
                    createText(20,150,"Car decoration"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        createImage(150,(MediaQuery.of(context).size.width/2),7),
                        SizedBox(height: 10,),
                        createText(20,150,"Birthday cake"),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),8),
                    SizedBox(height: 10,),
                    createText(20,150,"Birtday cake"),
                  ],),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        createImage(150,(MediaQuery.of(context).size.width/2),3),
                        SizedBox(height: 10,),
                        createText(20,150,"Decorations"),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),9),
                    SizedBox(height: 10,),
                    createText(20,150,"Services"),
                  ],),
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }

  Container createText(double h,double w,String s) {
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

  InkWell createImage(double h,double w,int i) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Container(child:Image.asset('lib/assets/birthday$i.webp'),)));
      },
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/birthday$i.webp'),fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

