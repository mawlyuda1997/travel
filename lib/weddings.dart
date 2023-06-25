import 'package:flutter/material.dart';
import 'package:untitled4/decorations.dart';




class WeddingPage extends StatefulWidget {
  const WeddingPage({Key? key}) : super(key: key);

  @override
  State<WeddingPage> createState() => _WeddingPageState();
}

class _WeddingPageState extends State<WeddingPage> {
  int i=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
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
                          createImage(150,(MediaQuery.of(context).size.width/2),3),
                          SizedBox(height: 10,),
                          createText(20,150,1),
                        ],
                      ),
                    ),
                 Column(children: [
                   createImage(150,(MediaQuery.of(context).size.width/2-20),1),
                   SizedBox(height: 10,),
                   createText(20,150,2),
                 ],),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          createImage(150,(MediaQuery.of(context).size.width/2),2),
                          SizedBox(height: 10,),
                          createText(20,150,3),
                        ],
                      ),
                    ),
                    Column(children: [
                      createImage(150,(MediaQuery.of(context).size.width/2-20),4),
                      SizedBox(height: 10,),
                      createText(20,150,4),
                    ],),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          createImage(150,(MediaQuery.of(context).size.width/2),5),
                          SizedBox(height: 10,),
                          createText(20,150,5),
                        ],
                      ),
                    ),
                    Column(children: [
                      createImage(150,(MediaQuery.of(context).size.width/2-20),6),
                      SizedBox(height: 10,),
                      createText(20,150,6),
                    ],),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          createImage(150,(MediaQuery.of(context).size.width/2),7),
                          SizedBox(height: 10,),
                          createText(20,150,7),
                        ],
                      ),
                    ),
                    Column(children: [
                      createImage(150,(MediaQuery.of(context).size.width/2-20),8),
                      SizedBox(height: 10,),
                      createText(20,150,8),
                    ],),
                  ],
                ),
                buildElevatedButton(context),
              ],
            ),
          ],
        ),

      ),
    );
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(onPressed: (){ i++;
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Container(width: 300,height: 300,color: i%2==0?Colors.cyan: Colors.indigo,)));}, child: Icon(Icons.add),);
  }

  InkWell createImage(double h,double w,int i) {
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




  Container createText(double h,double w,int i) {
    return Container(height: h,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown,
                        ),
                        child: Center(
                            child: i%2==0? Text("${i*200}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),):Text("${i*300}tmt",style: TextStyle(fontFamily: "Monserrat",fontSize: 14,color: Colors.white,),)
                        ),
                      );
  }


}
