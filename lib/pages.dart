import 'package:flutter/material.dart';
import 'package:untitled4/Bash sahypa.dart';
import 'package:untitled4/Birthday%20services.dart';
import 'package:untitled4/loginpage.dart';
import 'package:untitled4/weddings.dart';
import 'package:untitled4/decorations.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  String shaher=" ";
  @override
  int _index = 0;
  final List pages =[
    MyWidget(),
    Wedding(),
    Birthday(),
    Decor(),
    Logins(),

  ];
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(

       fixedColor: Colors.black,
        //backgroundColor: Colors.brown.withOpacity(0.2),
        //selectedItemColor: Colors.brown.withOpacity(0.2),

        currentIndex: _index,
        onTap: (val){
          setState(() {
            _index = val;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.pinkAccent),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Wedding services',backgroundColor: Colors.brown.withOpacity(0.2),),
        BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Birthday services',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'Decorations',backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.supervised_user_circle),onPressed: (){
            showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
              title: Center(child: Text('Welaýat saýla',style: TextStyle(fontFamily: "Monserrat",fontWeight: FontWeight.bold,fontSize: 20),)),
              actions: [
                buildRadioListTile("Aşgabat"),
                buildRadioListTile("Ahal"),
                buildRadioListTile("Balkan"),
                buildRadioListTile("Mary"),
                buildRadioListTile("Lebap"),
                buildRadioListTile("Daşoguz"),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   FloatingActionButton(onPressed: (){Navigator.of(context).pop();},child: Text("Yza"),),
                   SizedBox(width: 8,),
                   FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Logins()));},child: Text("Geç"),),
                 ],
               ),

              ],
            ),);
          },), label: 'Login',backgroundColor: Colors.blue),
      ],),
    );
  }

  RadioListTile<String> buildRadioListTile( String sh) {
    return RadioListTile(value: sh, groupValue: shaher, onChanged:(s){
                setState(() {
                  shaher = s!;

                });
              },title: Text(sh),);
  }
}
