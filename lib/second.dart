import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second({super.key, required this.data});
  String data;

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wellcome"),
      ),
      body: Center(
        child: Container(
          child: Text(widget.data),
        ),
      ),
    );
  }
}
