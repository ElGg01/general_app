import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class imagenClickeable extends StatefulWidget {
  const imagenClickeable(
      {super.key,
      required this.alto,
      required this.ancho,
      required this.ruta,
      required this.accion});

  final double alto;
  final double ancho;
  final String ruta;
  final void Function() accion;

  @override
  State<imagenClickeable> createState() => _imagenClickeableState();
}

//HACER EN EL INITSTATE LA COMPROBACION DE SI ES HTTP O ASSETS

class _imagenClickeableState extends State<imagenClickeable> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.alto,
      width: widget.ancho,
      child: MaterialButton(
        onPressed: widget.accion,
        child: Image.asset(widget.ruta),
      ),
    );
  }
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
          imagenClickeable(
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
          //SizedBox(
          //child: Image.asset('gato.png'),
          //),
          /* SizedBox(
              child: MaterialButton(
            child: Image.network(
                'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067'),
            onPressed: () {
              print('Se preciona el gato enojado');
            },
          )) */
        ],
      )),
    );
  }
}
