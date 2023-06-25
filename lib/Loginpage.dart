import 'package:flutter/material.dart';
import 'package:untitled4/for_lite_dark_theme.dart';
import 'package:untitled4/for_lite_dark_theme.dart';
import 'package:untitled4/for_hive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
  String _name,_parol;
  bool awtoKontrol = false;
  bool switchState = false;

  final formKey=GlobalKey<FormState>();
  void girilenMaglumat(){
    if(formKey.currentState!.validate()){
      formKey.currentState?.save();
    }
    else{setState(() {
      awtoKontrol =true;
    });
      }
  }
   return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
       title: Center(child: Text('Login page',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Monserrat'),)),

        ),
        body: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              Container(height: 50,),
              Padding(
                padding: const EdgeInsets.all(5),
                child:  TextFormField(
                  autocorrect: true,
                  maxLength: 20,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: "Adyňyzy giriziň",
                    labelText: "Ulanyjy ady",
                  ),
                  onSaved: (baha) => _name = baha!,
                  validator: (String? value) {
                    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                  },
                ),

              ),
       Padding(
           padding: const EdgeInsets.all(5),
           child: TextFormField(
             maxLength: 12,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
               hintText: "Telefon belgiňizi giriziň",
               labelText: "Telefon belgiňiz",
             ),
             initialValue: "+993",

           ),
       ),
       Padding(
           padding: const EdgeInsets.all(5),
           child: TextFormField(
             maxLength: 8,
             keyboardType: TextInputType.text,
             decoration: InputDecoration(
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
               hintText: "Sms kody ýazyň",
               labelText: "Parolyňyzy giriziň",
             ),
             onSaved: (baha) => _parol = baha!,
             validator: (String? value) {
               if (value?.length! == 7 ) return "In az 8 belgi bolmaly";
               else return null;
             },
           ),
       ),
       Padding(
           padding: const EdgeInsets.all(10),
           child: ElevatedButton(onPressed: (){girilenMaglumat;
             Navigator.of(context).pop();}, child: Icon(Icons.done,color: Colors.white,)),
       ),
              SwitchListTile(value: switchState, onChanged: (deger){
                setState(() {
                  switchState =! deger;
                });
              },title: Text("Dark theme"),
              secondary: IconButton(icon: Icon(Icons.refresh),onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DarkLite(),),);},
              ),
              ),
            ],
          ),
        ),

      );

  }
}
