import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final db = FirebaseFirestore.instance;

  final TextEditingController _nombreTec = TextEditingController();
  final TextEditingController _inicioTec = TextEditingController();
  TextEditingController _finTec = TextEditingController();
  TextEditingController _colorTec = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _cargarDatos() async {
    String nombre = _nombreTec.text;
    DateTime inicio = DateTime.parse(_inicioTec.text);
    Timestamp fin =
        Timestamp.fromDate(DateTime.parse(_finTec.text)); //Solo datetime
    int color = int.parse(_colorTec.text);

    //No es TEC es DT
    final inicio = Timestamp(_inicioTec.milisecondsSinceEpoch / 1000, 0);
    final inicio = Timestamp(_finTec.milisecondsSinceEpoch / 1000, 0);

    Map<String, dynamic> datos = {
      'Nombre': nombre,
      'Inicio': inicio,
      'Fin': fin,
      'Color': color
    };

    await db.collection('calendario').doc(nombre).set(datos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar evento'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                TextField(
                  decoration: const InputDecoration(label: 'Nombre'),
                )
                //Text('Nombre:'),
                //TextField(
                //controller: _nombreTec,
                //decoration: const InputDecoration(
                //border: OutlineInputBorder(), labelText: 'Nombre:'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
