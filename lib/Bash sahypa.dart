import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'TravelPage.dart';

void main ()=> runApp(SurprizApp());

class SurprizApp extends StatelessWidget {
  const SurprizApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text('Turkmen Surprise',style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),color: Colors.grey,),
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
                listElementi("lib/assets/surpriz1.jpg","lib/assets/balloons.jpg"),
                SizedBox(width: 20,),
                listElementi("lib/assets/surpriz2.png","lib/assets/balloons.jpg"),
                SizedBox(width: 20,),
                listElementi("lib/assets/surpriz3.jpg","lib/assets/balloons.jpg"),
                SizedBox(width: 20,),
                listElementi("lib/assets/balloons.jpg","lib/assets/balloons.jpg"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.greenAccent,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: AssetImage('lib/assets/surpriz1.jpg'),fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width-160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Birhday Services'),
                              Text("35 mins ago"),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.more_vert,color: Colors.grey,size: 22,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Center(child: Text("This official website for local services.You can put there your histories.Birthday parties,wedding and etc.",style: TextStyle(color: Colors.grey),)),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(height: 250,
                          width: (MediaQuery.of(context).size.width-50)/2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage("lib/assets/surpriz5.webp"),fit: BoxFit.cover),
                          ),),
                        SizedBox(width: 5,height: 5,),
                        Column(
                          children: [
                            Container(height: 110,
                              width: (MediaQuery.of(context).size.width-100)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage("lib/assets/surpriz6.webp"),fit: BoxFit.cover),
                              ),),
                            SizedBox(height: 5,),
                            Container(height: 110,
                              width: (MediaQuery.of(context).size.width-100)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage("lib/assets/surpriz6.webp"),fit: BoxFit.cover),
                              ),),

                          ],
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
    );
  }
  listElementi(String image, String image1) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: AssetImage(image),fit: BoxFit.cover,),),
              ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Container(height: 20,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
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