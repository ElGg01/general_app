# general_app

A General Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Comandos ejecutados para instalar firebase:

- Instalar nodeJS para npm
- Ejecutar el comando npm install -g firebase-tools
- Logearse con: firebase login
- Ejecutar el comando para confirmar que se logeo correctamente: firebase projects:list
- Ejecutar el siguiente comando para instalar flutterfire: dart pub global activate flutterfire_cli
- Agregar la siguiente ruta a la variable de entorno: C:\Users\Ggaa1\AppData\Local\Pub\Cache\bin
- Ejecutar el siguiente comando para agregar el archivo de configuración: flutterfire configure --project=project-8532610025914066957, NOTA: Ejecutarlo en la carpeta raiz del proyecto
- Ahora hay que inicializar firebase con el siguiente comando para instalar las dependencias: flutter pub add firebase_core
- Ejecutamos el siguiente comando para asegurarnos de que la configuración este actualizada (opcional): flutterfire configure
- Importamos las librerias:
  import 'package:firebase_core/firebase_core.dart';
  import 'firebase_options.dart';
