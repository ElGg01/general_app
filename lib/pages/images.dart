import 'package:flutter/material.dart';
import 'package:general_app/widgets/imagen_clickeable.dart';

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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImagenClickeable(
              alto: 300,
              ancho: 300,
              ruta: 'assets/gatos/gato.png',
              accion: () {
                print('Imagen clickeada desde un componente');
              }),
          SizedBox(
            height: 300,
            child: MaterialButton(
                onPressed: () {
                  print('Se preciono el gato enojado');
                },
                child: Image.network(
                    'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067')),
          ),
        ],
      )),
    );
  }
}
