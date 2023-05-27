import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Events {
  String name;
  String location;
  DateTime startTime;
  
  Events({required this.name,required this.location,required this.startTime});
}
void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Page1(),
));
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}
class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text('Mawlyuda'),
          backgroundColor: Colors.blueGrey,
          floating: true,
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("lib/assets/forest.jpeg",
              fit: BoxFit.cover,),
          ), systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        SliverList(delegate: SliverChildListDelegate(containers()
        ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
          childCount: 20,
            (BuildContext context,index){
              return Container(
                height: 50,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  gradient:LinearGradient(colors: [Colors.deepOrange,Colors.greenAccent],
                  end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                ),
          child: Center(child: Text('Builder ${index+1}',style: TextStyle(
            fontSize: 30,color: Colors.black,
          ),)),
              );
            }
        ),),
        SliverPadding(padding: EdgeInsets.all(10)),
        SliverGrid(delegate:SliverChildListDelegate(containers()), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        ),
        SliverGrid(delegate:SliverChildBuilderDelegate(childCount: 6,
    (BuildContext context,index){
    return Container(
    height: 50,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
    gradient:LinearGradient(colors: [Colors.deepOrange,Colors.greenAccent],
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
    ),
    ),
    child: Center(child: Text('Builder ${index+1}',style: TextStyle(
    fontSize: 15,color: Colors.black,
    ),)),
    );}
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        ),
      ],
    );
  }
  List<Widget> containers() {
    return [
      Container(
        color: Colors.teal,
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 30,color: Colors.black
          ),),
        ),
      ),
      Container(
        color: Colors.green,
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 30,color: Colors.black
          ),),
        ),
      ),
      Container(
        color: Colors.deepOrange,
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 30,color: Colors.black
          ),),
        ),
      ),
      Container(
        color: Colors.indigo,
        height: 100,
        child: const Center(
          child: Center(
            child: Text("Salam",style: TextStyle(
                fontSize: 30,color: Colors.black
            ),),
          ),
        ),
      ),
      Container(
        color: Colors.red[100],
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 30,color: Colors.black
          ),),
        ),
      ),
      Container(
        color: Colors.pink,
        height: 100,
        child: Builder(
            builder: (context) {
              return const Center(
                child: Text("Salam",style: TextStyle(
                    fontSize: 30,color: Colors.black
                ),),
              );
            }
        ),
      ),
      Container(
        color: Colors.lightBlueAccent,
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 30,color: Colors.black
          ),),
        ),

      ),
      Container(
        color: Colors.purple,
        height: 100,
        child: const Center(
          child: Text("Salam",style: TextStyle(
              fontSize: 25,color: Colors.black
          ),),
        ),

      ),
    ];
  }
}
