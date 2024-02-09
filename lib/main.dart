import 'package:flutter/material.dart';
import 'package:general_app/pages/about.dart';
import 'package:general_app/pages/calculator.dart';
import 'pages/home_page.dart';
import 'pages/counter.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contador': (context) => const Counter(),
        '/calculadora': (context) => const Calculator(),
        '/acerca de': (context) => const About()
      },
    );
  }
}
