import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'TravelPage.dart';

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        title: Text("Turkmen Travel",style: TextStyle(fontSize: 20,
            color: Colors.white),),
        backgroundColor: Color.fromRGBO(108, 163, 187, 1),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined)),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor:Color.fromRGBO(108, 163, 187, 1),
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 40, left: 10, right: 10, ),
              child: Text("Turkmen Travel",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
Container(
  height: 2,
  width: MediaQuery.of(context).size.width-300,
  color: Colors.white,
),
            Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top:30)),
                Text("Destinations",style: TextStyle(fontSize: 20,
                color: Colors.white),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top:30)),
                Text("Experiences",style: TextStyle(fontSize: 20,
                    color: Colors.white),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top:30)),
                TextButton(onPressed: () {Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (BuildContext context) => MyHotel()));},
                    child: Text('Travel Agencies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,
                        color: Colors.white),)),
                // Text("Travel agencies"),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 10,),
                Text("Legal information",style: TextStyle(fontSize: 20,
                    color: Colors.white),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
              ],
            ),
            Row(
              children: [
                Text("More Pages",style: TextStyle(fontSize: 20,
                    color: Colors.white),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
              ],
            ),
            Row(
              children: [
                Text("Contract",style: TextStyle(fontSize: 20,
                    color: Colors.white),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true
                ), itemCount: 3,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Stack(
                    children: [
                      Image.asset(
                        "lib/assets/28032023turizmuz-1 1.png",
                        width: 400,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        bottom: 15,
                        left: 20,
                        child: Text(
                          'Explore \n Turkmenistan \n with us',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  Image.asset(
                  "lib/assets/28032023turizmuz-1 1.png",
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  fit: BoxFit.cover,
                  ),],
                  );
              },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Top Destinations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(7),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset("lib/assets/IMG_5239 2.png"),
                        ),
                        Positioned(
                          left: 15,
                          child: Text(
                            'Gokdere',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.18,
                          height: 70,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/assets/636b8b89d39b7265333136 1.png'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Yangy Gala Canyon',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.18,
                          height: 70,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('lib/assets/Rectangle 1.png'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Derveze',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommendation \n Summer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Image.asset('lib/assets/awaza 1.png', fit: BoxFit.cover, width: MediaQuery.of(context).size.width * 0.46,)
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset('lib/assets/image 6.png'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.18,
                    child: Image.asset('lib/assets/image 4.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class DrawerButton extends StatelessWidget {
  final  Function() onTap;
  final String title;
  const DrawerButton({ required this.onTap ,required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Text(title),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
