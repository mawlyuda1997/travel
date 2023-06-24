import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Box box1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
  }

  void createBox() async{
    box1 = await Hive.openBox('Add advertise');
    box1 = await Hive.initFlutter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){
                box1.put('name', 'Advertise');
                box1.put('myname', 'Mawlyuda');
                box1.isOpen;
                print('DATA ADDED');
              }, child: const Text("Add")),

              ElevatedButton(onPressed: () async{
                print(box1.get('myname'));
                print(box1.get('name'));
              }, child: const Text("Read")),

              ElevatedButton(onPressed: (){
                box1.put('name', 'Mawlyuda');
              }, child:const   Text("Update")),

              ElevatedButton(onPressed: (){
                box1.delete('name');
              }, child: const Text("Delete")),
              
              ElevatedButton(onPressed: (){
                Hive.box('Advertise').clear();
              }, child: const  Text("Delete BOX")),
            ],
          ),
        ),
      ),
    );
  }
}