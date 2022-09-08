import 'package:flutter/material.dart';

class Normalpizza extends StatefulWidget {
  const Normalpizza({super.key});

  @override
  State<Normalpizza> createState() => _NormalpizzaState();
}

class _NormalpizzaState extends State<Normalpizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Normal pizza"),
      ),
      body: Column(children: []),
    );
  }
}
