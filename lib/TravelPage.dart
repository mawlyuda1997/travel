import 'package:flutter/material.dart';

import 'productpage.dart';

class MyHotel extends StatefulWidget {
  @override
  State<MyHotel> createState() => _MyHotelState();
}

class _MyHotelState extends State<MyHotel> {
  String vval = '1';
  String a = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: 'Car rental',
          ),
        ],
      ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Icon(Icons.arrow_forward),
                  Image.asset(
                    "lib/assets/1.png",
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Text(" List of hotels",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter location/region',
                    suffixIcon: Icon(Icons.search),
                    iconColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: 170,
                    width: MediaQuery.of(context).size.width / 2,
                    child: ExpansionTile(
                      title: Text('Arrival (opotional)'),
                      children: [
                        ListTile(
                          title: Text(''),
                        ),
                        ListTile(
                          title: Text(''),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    height: 170,
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width / 2,
                    child: ExpansionTile(
                      title: Text('Departure (opotional)'),
                      children: [
                        ListTile(
                          title: Text(''),
                        ),
                        ListTile(
                          title: Text(''),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              SizedBox(

                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.grey,
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, top: 10),
                      child: Column(
                        children: [
                          Text(
                            'Room',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(

                            width: 10,
                          ),
                          DropdownButton(
                              value: vval,
                              items: [
                                DropdownMenuItem(
                                  child: Text("1"),
                                  value: "1",
                                ),
                                DropdownMenuItem(
                                  child: Text("2"),
                                  value: "2",
                                )
                              ],
                              onChanged: (val) {
                                vval = val!;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 100,
                    color: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Text(
                            'Guests',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(

                            width: 10,
                          ),
                          DropdownButton(
                              value: a,
                              items: [
                                DropdownMenuItem(
                                  child: Text("1 Adult"),
                                  value: "1",
                                ),
                                DropdownMenuItem(
                                  child: Text("2 Adults"),
                                  value: "2",
                                )
                              ],
                              onChanged: (val) {
                                a = val!;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              SizedBox(height: 25,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Text('Accommadation', style: TextStyle(fontSize: 20, color: Colors.white),)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProductPage()));
                },
                child:Container(
                  child: Text('Go'),
                ) ,
              )
            ],
          ),
        ],
      ),
    );
  }
}
