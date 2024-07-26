import 'package:flutter/material.dart';

class helloworld extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BELAJAR FLUTTER"),
        ),
        body: const Center(
          child: Text("Hello World"),
      ),
    );
  }
}