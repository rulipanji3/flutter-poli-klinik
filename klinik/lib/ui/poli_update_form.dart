import 'package:flutter/material.dart';
import 'package:klinik/model/poli.dart';
import 'package:klinik/ui/poli_detail.dart';


class PoliUpdateForm extends StatefulWidget {
  final Poli poli; 

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formkey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void inistate() {  
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }
  @override
  Widget build (BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(  
        child: Form(  
          key: _formkey,
          child: Column(  
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {  
    return TextField(  
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }
  _tombolSimpan() {
  return ElevatedButton(  
    onPressed: () {  
      Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
      child: const Text("Simpan Perubahan"));
  }
}