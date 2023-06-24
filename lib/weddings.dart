import 'package:flutter/material.dart';




class Wedding extends StatefulWidget {
  const Wedding({Key? key}) : super(key: key);

  @override
  State<Wedding> createState() => _WeddingState();
}

class _WeddingState extends State<Wedding> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.brown.withOpacity(0.4),
      title: Center(child: Text("Wedding Services",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Monserrat'),)),),
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
                        asakyText(20,150,"Wedding venue"),
                      ],
                    ),
                  ),
               Column(children: [
                 suratUcin(150,(MediaQuery.of(context).size.width/2-20),1),
                 SizedBox(height: 10,),
                 asakyText(20,150,"Wedding venue"),
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
                        asakyText(20,150,"Wedding car"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),4),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Wedding car"),
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
                        asakyText(20,150,"Salon Services"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),6),
                    SizedBox(height: 10,),
                    asakyText(20,150,"Salon Services"),
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
                        asakyText(20,150,"Wedding dresses"),
                      ],
                    ),
                  ),
                  Column(children: [
                    suratUcin(150,(MediaQuery.of(context).size.width/2-20),8),
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

  InkWell suratUcin(double h,double w,int i) {
    return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Container(child:Image.asset('lib/assets/wedding$i.webp'),)));
    },
    child: Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('lib/assets/wedding$i.webp'),fit: BoxFit.cover,
    ),
    ),
    ),
  );
  }




  Container asakyText(double h,double w,String s) {
    return Container(height: h,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown,
                        ),
                        child: Center(
                          child: Text(s,style: TextStyle(
                            fontFamily: "Monserrat",fontSize: 14,color: Colors.white,
                          ),),
                        ),
                      );
  }


}
