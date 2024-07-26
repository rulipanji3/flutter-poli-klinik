import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:klinik/model/poli.dart';
import 'package:klinik/ui/poli.form.dart';
import 'package:klinik/ui/poli_item.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Poliitem(poli: Poli(namaPoli: "Poli Anak")),
          Poliitem(poli: Poli(namaPoli: "Poli Kandungan")),
          Poliitem(poli: Poli(namaPoli: "Poli Gigi")),
          Poliitem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
