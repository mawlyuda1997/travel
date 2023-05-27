import 'package:flutter/material.dart';
import 'package:untitled4/productpage.dart';
import 'secondpage.dart';
import 'Menu.dart';
import 'klaslar.dart';
class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  int _index = 0;
  final List pages =[
    MyWidget(),
    ProductPage(),
    Container(),
    Container()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(

        // fixedColor: Colors.black,
        backgroundColor: Color.fromRGBO(108, 163, 187, 1),
        selectedItemColor: Color.fromRGBO(108, 163, 187, 1),
        // selectedItemColor: Colors.,
        currentIndex: _index,
        onTap: (val){
          setState(() {
            _index = val;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Color.fromRGBO(108, 163, 187, 1),),
        BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotels'),
        BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Flights'),
        BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: 'Car rental'),
      ],),
    );
  }
}
