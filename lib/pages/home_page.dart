import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        backgroundColor: Colors.pinkAccent,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Aplicaciones:',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/contador');
              },
              icon: const Icon(Icons.numbers),
              label: const Text('Contador'),
              style: ElevatedButton.styleFrom(),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/calculadora');
              },
              icon: const Icon(Icons.calculate),
              label: const Text('Calculadora'),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/acerca de');
        },
        tooltip: 'Acerca de...',
        child: const Icon(Icons.question_mark),
      ),
    );
  }
}
