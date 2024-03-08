import 'package:flutter/material.dart';

class ImagesList extends StatefulWidget {
  const ImagesList(
      {super.key, required this.listImages, required this.listDescriptions});

  final List<String> listImages;
  final List<String> listDescriptions;

  @override
  State<ImagesList> createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  List<Widget> listaWidgets = [];

  @override
  void initState() {
    super.initState();
    crearWidgets();
  }

  void crearWidgets() {
    for (var i = 0; i < widget.listImages.length; i++) {
      listaWidgets.add(Column(
        children: [
          Image.asset(widget.listImages[i]),
          Text(widget.listDescriptions[i])
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: listaWidgets);
  }

  /* return ListView.builder(
        itemCount: widget.listImages.length,
        itemBuilder: (context, index) {
          return Padding(padding: padding)
        }); */
//return ListView.builder(
  //itemCount: widget.listImages.length,
  //itemBuilder: (BuildContext context, int index) {
  //return ListTile(
  //title: Image.network(widget.listImages[index]),
  //subtitle: Text(widget.listDescriptions[index])
  //);
  //)
  //}
}
