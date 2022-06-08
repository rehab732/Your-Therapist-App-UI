import 'package:flutter/material.dart';

class mood extends StatefulWidget{
  @override
  State<mood> createState() => _moodState();
}

class _moodState extends State<mood> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("mood"));
  }
}