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
            'assets/gatos/gato.png',
            'assets/gatos/gato.png',
            'assets/gatos/gato.png',
            'assets/gatos/gato.png',
            'assets/gatos/gato.png',
            'assets/gatos/gato.png',
            'assets/gatos/gato.png'
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
        ));
    /* return const ImagesList(
        listImages: ['assets/gatos/gato.png', 'assets/gatos/gato.png'],
        listDescriptions: ['Neon 1', 'Neon 2']); */
/*     return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImagenClickeable(
              alto: 200,
              ancho: 200,
              ruta: 'assets/gatos/gato.png',
              accion: () {
                print('Imagen clickeada desde un componente');
              }),
          ImagenClickeable(
              alto: 200,
              ancho: 200,
              ruta:
                  'https://www.pixground.com/agent-neon-valorant-4k-wallpaper-3/?download-img=4k',
              accion: () {
                print('Imagen clickeada desde un componente');
              }),
          SizedBox(
            height: 200,
            child: MaterialButton(
                onPressed: () {
                  print('Se preciono el gato enojado');
                },
                child: Image.network(
                    'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067')),
          ),
          ImagesList(listImages: [
            'https://www.pixground.com/agent-neon-valorant-4k-wallpaper-3/?download-img=4k',
            'https://www.pixground.com/agent-neon-valorant-4k-wallpaper-3/?download-img=4k'
          ], listDescriptions: [
            'Neon 1',
            'Neon 2'
          ])
        ],
      )),
    ); */
  }
}
