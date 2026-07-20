import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  @override
  State<StatefulWidget> createState()=> _HomePage();
}

class _HomePage extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber
        ),
      ),
    );
  }
  
}