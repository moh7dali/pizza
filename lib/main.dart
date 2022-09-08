import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_07/customizepizza.dart';
import 'package:lab_07/normalpizza.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab_07"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green,
          Colors.white,
          Colors.red,
        ])),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    color: Colors.amberAccent[100]),
                child: Text(""),
              ),
              CircleAvatar(
                radius: 220,
                backgroundImage: NetworkImage(
                    'https://w7.pngwing.com/pngs/890/893/png-transparent-pizza-logo-pizza-delivery-italian-cuisine-chef-pizza-icon-logo-design-food-logo-cooking.png'),
              )
            ]),
            SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Normalpizza();
                    },
                  ));
                });
              },
              icon: Icon(Icons.local_pizza_sharp),
              label: Text(
                "Create normal pizza",
                style: GoogleFonts.combo(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green[200]),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Custompizza();
                    },
                  ));
                });
              },
              icon: Icon(Icons.local_pizza),
              label: Text(
                "Create your own pizza",
                style: GoogleFonts.combo(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.red[200]),
            )
          ],
        ),
      ),
    );
  }
}
