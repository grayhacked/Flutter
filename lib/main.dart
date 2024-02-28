// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyBoutik());
}

class MyBoutik extends StatelessWidget {
  const MyBoutik({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Eboutikoo",
          ),
          actions: [
            Text("PEYE", style: TextStyle(fontSize: 18.0)),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "Eboutikoo",
                  style: TextStyle(fontSize: 20.0),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("K O N E K T E"),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("L I S  P W O D W I"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LisPwodwi()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("D E K O N E K T E"),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  color: Color.fromARGB(255, 4, 38, 95),
                  height: 150,
                  width: 500,
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Kategori",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  )),
              SizedBox(
                height: 16.0,
              ),
              //Second container
              Container(
                  color: Color.fromARGB(255, 4, 38, 95),
                  height: 150,
                  width: 500,
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Kategori",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  )),

              SizedBox(
                height: 20.0,
              ),

              //container en ligne
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 4, 38, 95),
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 4, 38, 95),
                      height: 150,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LisPwodwi extends StatefulWidget {
  const LisPwodwi({Key? key}) : super(key: key);

  @override
  State<LisPwodwi> createState() => _LisPwodwiState();
}

class _LisPwodwiState extends State<LisPwodwi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Eboutikoo",
          ),
          actions: [
            Text("PEYE", style: TextStyle(fontSize: 18.0)),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color.fromARGB(255, 4, 38, 95),
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Container(
                          color: Color.fromARGB(255, 4, 38, 95),
                          height: 150,
                        ),
                      ),
                    ],
                  )
              ],
            )));
  }
}