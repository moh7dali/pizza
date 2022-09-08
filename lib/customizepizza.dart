import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Custompizza extends StatefulWidget {
  const Custompizza({super.key});

  @override
  State<Custompizza> createState() => _CustompizzaState();
}

class _CustompizzaState extends State<Custompizza> {
  List dough = ["Thin", "Thick", "Classic", "san francisco"];
  String selected = "Classic";
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customize your pizza"),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        width: double.infinity,
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
            SizedBox(
              height: 10,
            ),
            Text("Create your own favorite pizza",
                style: GoogleFonts.combo(fontSize: 30)),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.pink[200],
              thickness: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Quantity", style: GoogleFonts.combo(fontSize: 30)),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      if (count <= 0) {
                        count = 1;
                      }
                      count--;
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text(
                    "",
                    style: GoogleFonts.combo(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.pink[200]),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(count.toString(), style: GoogleFonts.combo(fontSize: 30)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text(
                    "",
                    style: GoogleFonts.combo(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.green[200]),
                ),
              ],
            ),
            Divider(
              color: Colors.pink[200],
              thickness: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Your Choose of Dough",
                style: GoogleFonts.combo(fontSize: 30)),
            SizedBox(
              height: 10,
            ),
            DropdownButton(
                value: selected,
                items: dough
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text("${e}",
                            style: GoogleFonts.combo(fontSize: 30))))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    selected = value.toString();
                  });
                })),
            Divider(
              color: Colors.pink[200],
              thickness: 3,
            ),
            Text("Choose Item you love",
                style: GoogleFonts.combo(fontSize: 30)),
            Chkbox("Chicken pieces"),
            Chkbox("Mushroom"),
            Chkbox("Onion"),
            Chkbox("Pepperoni"),
            Chkbox("Sweat corn"),
            Chkbox("Black olive"),
            Chkbox("Beef"),
            Chkbox("Cheese"),
            Chkbox("tuna"),
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
              style: ElevatedButton.styleFrom(primary: Colors.cyan[200]),
            ),
          ]),
        ),
      ),
    );
  }
}

class Chkbox extends StatefulWidget {
  Chkbox(this.name);
  String? name;
  bool item = false;
  @override
  State<Chkbox> createState() => _ChkboxState();
}

class _ChkboxState extends State<Chkbox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text("${widget.name}", style: GoogleFonts.combo(fontSize: 30)),
        value: widget.item,
        onChanged: (value) {
          setState(() {
            widget.item = value!;
          });
        });
  }
}
