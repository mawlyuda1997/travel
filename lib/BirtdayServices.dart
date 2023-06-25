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
                        createText(20,150,1),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),2),
                    SizedBox(height: 10,),
                    createText(20,150,2),
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
                        createText(20,150,3),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),6),
                    SizedBox(height: 10,),
                    createText(20,150,4),
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
                        createText(20,150,5),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),8),
                    SizedBox(height: 10,),
                    createText(20,150,6),
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
                        createText(20,150,7),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),9),
                    SizedBox(height: 10,),
                    createText(20,150,8),
                  ],),
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }

  Container createText(double h,double w,int i) {
    return Container(height: h,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green,
      ),
      child: Center(
        child: i%2==0? Text("${i*400}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),):Text("${i*500}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),)
           ),
      );

  }
  //style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),
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

