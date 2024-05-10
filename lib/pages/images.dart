import 'package:flutter/material.dart';
import 'package:general_app/widgets/images_list.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: ImagesList(listImages: [
          'assets/gatos/gato.png',
          'assets/gatos/gatoEnojao.jpg',
          'assets/gatos/gatoChilling.png',
          'assets/gatos/gatoSorprendido.jpg',
          'assets/gatos/gatoTriste.png',
          'assets/gatos/gatoCrudo.png',
          'assets/gatos/gatoAcostado.png',
          'assets/gatos/gatoChollis.png'
        ], listDescriptions: [
          'IMG 1',
          'IMG 2',
          'IMG 3',
          'IMG 4',
          'IMG 5',
          'IMG 6',
          'IMG 7',
          'IMG 8'
        ]),
      ),
    );
  }
}
