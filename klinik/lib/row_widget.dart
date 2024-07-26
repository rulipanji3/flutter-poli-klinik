import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Row"),
      ),
      body: Row(
        children: const [
          Text(" AYO"),
          Text(" MOKEL"),
          Text(" BERSAMA"),
          Text(" KITA"),
        ],
      ),
    );
  }
}
