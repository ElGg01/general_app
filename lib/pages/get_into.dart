import 'package:flutter/material.dart';

class GetInto extends StatefulWidget {
  const GetInto({super.key});

  @override
  State<GetInto> createState() => _GetIntoState();
}

class _GetIntoState extends State<GetInto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
        backgroundColor: Colors.cyan,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Ingresa tus datos:',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    const TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Nombre:'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white),
                      child: const Text(
                        'Enviar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
