import 'package:flutter/material.dart';

class Custompizza extends StatefulWidget {
  const Custompizza({super.key});

  @override
  State<Custompizza> createState() => _CustompizzaState();
}

class _CustompizzaState extends State<Custompizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customize your pizza"),
      ),
      body: Column(children: []),
    );
  }
}
