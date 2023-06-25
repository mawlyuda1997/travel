
import 'package:flutter/material.dart';

import 'package:untitled4/ForImageHero.dart';
import 'package:untitled4/for_hive.dart';




void main ()=> runApp(SurprizApp());
class SurprizApp extends StatelessWidget {
  const SurprizApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> {
  int a=0;
  int b=0;
  int c=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Padding(
              padding:  EdgeInsets.only(top:15),
              child: Text('Turkmen Surprise',style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "Monserrat",
                color: Colors.black,
              ),),
            ),
          ),
          actions: [
            IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));

            }, icon: Icon(Icons.camera_alt),color: Colors.grey,),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Container(
              height: 160,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  buildListElement("lib/assets/balloons.jpg","lib/assets/balloons.jpg"),
                  SizedBox(width: 20,),
                  buildListElement("lib/assets/surpriz2.png","lib/assets/balloons.jpg"),
                  SizedBox(width: 20,),
                  buildListElement("lib/assets/surpriz3.jpg","lib/assets/balloons.jpg"),
                  SizedBox(width: 20,),
                  buildListElement("lib/assets/surpriz1.jpg","lib/assets/balloons.jpg"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: Container(
                  height: 600,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          buildContainer1(65,65,4),
                          SizedBox(width: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width-160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Birhday Services',style: TextStyle(fontFamily: 'Monserrat',fontWeight: FontWeight.bold,fontSize: 16),),
                                Text("35 mins ago",style: TextStyle(fontFamily: "Monserrat",fontSize: 14),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.more_vert,color: Colors.grey,size: 22,),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Center(child: Text("This official website for local services.You can put there your surprise services,birthday services,wedding services,party and decoration services and etc.",style: TextStyle(fontFamily: "Monserrat",fontWeight: FontWeight.bold),)),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          buildInkWell(5,200,(MediaQuery.of(context).size.width-30)/2),
                          SizedBox(width: 5,height: 5,),
                          Column(
                            children: [
                              buildInkWell(7,95,(MediaQuery.of(context).size.width-100)/2),
                              SizedBox(height: 5,),
                              buildInkWell(6,95,(MediaQuery.of(context).size.width-100)/2),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height:10 ,),
                      Row(children: [
                        buildContainer2(35,105,"# Wedding Services"),
                        SizedBox(width: 20,),
                        buildContainer2(35,105,"# Decoration Services"),
                      ],),
                      SizedBox(height: 5,),
                      Container(height: 1,
                      width: double.infinity,
                      color: Colors.grey,),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          IconButton(onPressed: (){setState(() {
                            c++;
                          });}, icon: Icon(Icons.reply,color: Colors.brown.withOpacity(0.2),size:20)),
                          SizedBox(width: 3,),
                          Text("${c+1.2} K",style: TextStyle(fontSize: 15,fontFamily: "Monserrat"),),
                          SizedBox(width: 3,),
                          IconButton(onPressed: (){b++;}, icon:Icon(Icons.comment,color: Colors.brown.withOpacity(0.2),size:22)),
                          SizedBox(width:3,),
                          Text("${b+350}",style: TextStyle(fontSize: 16,fontFamily: "Monserrat"),),
                          Container(
                            width: MediaQuery.of(context).size.width-260,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){setState(() {
                                  a++;
                                });}, icon: Icon(Icons.favorite,color: Colors.red,size: 20,)),
                                SizedBox(width:3,),
                                Text("${a+2.2} K",style: TextStyle(fontSize: 16,fontFamily: "Monserrat"),),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer2(double h,double w,String s) {
    return Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.brown.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(s,style: TextStyle(
                            fontSize: 12,color: Colors.brown,
                          ),),
                        ),
                      );
  }

  InkWell buildInkWell(int i,double h,double w) {
    return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imgPath:"lib/assets/surpriz$i.webp")));
                          },
                          child: Hero(
                            tag: "lib/assets/surpriz$i.webp",
                            child: Container(height: h,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(image: AssetImage("lib/assets/surpriz$i.webp"),fit: BoxFit.cover),
                              ),),
                          ),
                        );
  }

  Container buildContainer1(double w,double h,int i) {
    return Container(
                          width: w,
                          height: h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: AssetImage('lib/assets/surpriz4.webp'),fit: BoxFit.cover),
                          ),
                        );
  }



  buildListElement(String image, String image1) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Container(child:Image.asset(image),)));
                },
                child: Hero(
                  tag: "lib/assets/image.webp",
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage(image),fit: BoxFit.cover,),),
                  ),
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Container(height: 20,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.pinkAccent,
          ),
          child: Center(
            child: Text('Surprise',style: TextStyle(
              fontFamily: "Monserrat",fontSize: 14,color: Colors.white,
            ),),
          ),
        ),
      ],
    );
  }
}