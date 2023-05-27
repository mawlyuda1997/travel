import 'package:flutter/material.dart';




class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.menu),
        ),
        title: Text("Turkmen Travel"),
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
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                 Icon(Icons.arrow_forward),
                  Image.asset(
                    "images/1.png",
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Text(" Travel agencies in Turkmenistan",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 26.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)
                    ),
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 30.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width)
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 28.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)
                    ),
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 23.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width)
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 22.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)
                    ),
                    Flexible(
                        flex: 1,
                        child: Image.asset('images/image 27.png',fit: BoxFit.cover, width: MediaQuery.of(context).size.width)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}