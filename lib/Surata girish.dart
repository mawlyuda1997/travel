import 'package:flutter/material.dart';
import 'package:untitled4/Bash sahypa.dart';
import 'Girish.dart';
class Details extends StatefulWidget {
  var imgPath;
  Details({this.imgPath});




  @override
  State<Details> createState() => _DetailsState();


}

class _DetailsState extends State<Details> {



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Hero(
          tag: widget.imgPath,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),fit: BoxFit.contain,
              ),
            ),
          ),
        ),
          Positioned(child:Material(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: buildContainer(10),
                    ),
                    SizedBox(width: 3,),
                    buildContainer(12),
                    SizedBox(width: 10,),
                    buildContainer(11),
                  ],),
                  Text("A wedding is a special celebration and hence every aspect of a wedding is considered important, including wedding decorations. Whether it is a simple décor or an extravagant affair, a wedding decoration is a must to set the tone for the occasion. They accentuate the venue and the ceremony.For more information:+99365000102",style: TextStyle(
                   fontSize: 10,fontFamily: "Monserrat",fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ),
            elevation: 4,

          ) ,
          left: 15,
          right: 15,
          bottom: 15,)
        ],
      ),

    );
  }

  Container buildContainer(int i) {
    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image:DecorationImage(image:AssetImage("lib/assets/surpriz$i.webp"),fit: BoxFit.contain) ,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                    );
  }
}




