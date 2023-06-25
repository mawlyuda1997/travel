import 'package:flutter/material.dart';


class DecorPage extends StatefulWidget {
  const DecorPage({Key? key}) : super(key: key);

  @override
  State<DecorPage > createState() => _DecorPageState();
}

class _DecorPageState extends State<DecorPage > {
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
                        createImage(150,(MediaQuery.of(context).size.width/2),3),
                        SizedBox(height: 10,),
                        createText(20,150,1),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),1),
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
                        createImage(150,(MediaQuery.of(context).size.width/2),2),
                        SizedBox(height: 10,),
                        createText(20,150,3),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),4),
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
                        createImage(150,(MediaQuery.of(context).size.width/2),5),
                        SizedBox(height: 10,),
                        createText(20,150,5),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),6),
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
                        createImage(150,(MediaQuery.of(context).size.width/2),7),
                        SizedBox(height: 10,),
                        createText(20,150,7),
                      ],
                    ),
                  ),
                  Column(children: [
                    createImage(150,(MediaQuery.of(context).size.width/2-20),8),
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
        color: Colors.redAccent,
      ),
      child: Center(
          child: i%2==0? Text("${i*300}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),):Text("${i*100}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),)
      ),
    );
  }

  InkWell createImage(double h,double w,int i) {
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
