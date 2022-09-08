import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_07/main.dart';

class Normalpizza extends StatefulWidget {
  const Normalpizza({super.key});

  @override
  State<Normalpizza> createState() => _NormalpizzaState();
}

class _NormalpizzaState extends State<Normalpizza> {
  String pizzatype = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Normal pizza"),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green,
          Colors.white,
          Colors.red,
        ])),
        child: SingleChildScrollView(
          child: Column(children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                  'https://w7.pngwing.com/pngs/890/893/png-transparent-pizza-logo-pizza-delivery-italian-cuisine-chef-pizza-icon-logo-design-food-logo-cooking.png'),
            ),
            Text("Choose one from these type",
                style: GoogleFonts.combo(fontSize: 30)),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text("Margherita Pizza",
                  style: GoogleFonts.combo(fontSize: 20)),
              subtitle: Text("tomato sauce with mazzarella cheese",
                  style: GoogleFonts.combo(fontSize: 15)),
              secondary: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              value: "Margherita",
              groupValue: pizzatype,
              onChanged: (val) {
                setState(() {
                  pizzatype = val.toString();
                });
              },
            ),
            RadioListTile(
              title:
                  Text("Alfredo Pizza", style: GoogleFonts.combo(fontSize: 20)),
              subtitle: Text(
                  " chicken pieces mushroom and alfredo sauce with mazzarella cheese",
                  style: GoogleFonts.combo(fontSize: 15)),
              secondary: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              value: "alredo",
              groupValue: pizzatype,
              onChanged: (val) {
                setState(() {
                  pizzatype = val.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Hot Pizza", style: GoogleFonts.combo(fontSize: 20)),
              subtitle: Text("Beef onion chilis",
                  style: GoogleFonts.combo(fontSize: 15)),
              secondary: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              value: "hot",
              groupValue: pizzatype,
              onChanged: (val) {
                setState(() {
                  pizzatype = val.toString();
                });
              },
            ),
            RadioListTile(
              title:
                  Text("Smoked Pizza", style: GoogleFonts.combo(fontSize: 20)),
              subtitle: Text("Smoked turkey and mushroom",
                  style: GoogleFonts.combo(fontSize: 15)),
              secondary: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              value: "smoked",
              groupValue: pizzatype,
              onChanged: (val) {
                setState(() {
                  pizzatype = val.toString();
                });
              },
            ),
            RadioListTile(
              title:
                  Text("Seafood Pizza", style: GoogleFonts.combo(fontSize: 20)),
              subtitle: Text("shrimp garlic green pepper and tuna",
                  style: GoogleFonts.combo(fontSize: 15)),
              secondary: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              value: "seafood",
              groupValue: pizzatype,
              onChanged: (val) {
                setState(() {
                  pizzatype = val.toString();
                });
              },
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ));
                });
              },
              icon: Icon(Icons.home),
              label: Text(
                "Back to home",
                style: GoogleFonts.combo(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.pink[200]),
            ),
          ]),
        ),
      ),
    ));
  }
}
