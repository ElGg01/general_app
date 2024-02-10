import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String text, Color bgColor, Color textColor) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: const MaterialStatePropertyAll(CircleBorder()),
            backgroundColor: MaterialStatePropertyAll(bgColor),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
            minimumSize: const MaterialStatePropertyAll(Size(90, 100)),
            maximumSize: const MaterialStatePropertyAll(Size(90, 100))),
        child: Text(text, style: TextStyle(fontSize: 35, color: textColor)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '100+',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    //EN ESTE CHILD SOLO VA TEXT
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width - 30,
                        child: const Scrollbar(
                          //thumbVisibility: true,
                          //trackVisibility: true,
                          child: SingleChildScrollView(
                            reverse: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              //AGREGAR QUE EL SCROLL SE VAYA AL FINAL CUANDO SE BORRA UN NUMERO
                              '1234567891234',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )))
              ],
            ),
            const Divider(
              color: Colors.grey, // Color de la línea divisora
              thickness: 2, // Grosor de la línea divisora
              height: 60, // Altura de la línea divisora
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.deepPurple, Colors.white),
                calcButton('%', Colors.deepPurple, Colors.white),
                calcButton('<-', Colors.deepPurple, Colors.white),
                calcButton('/', Colors.redAccent, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.blueGrey, Colors.white),
                calcButton('8', Colors.blueGrey, Colors.white),
                calcButton('9', Colors.blueGrey, Colors.white),
                calcButton('*', Colors.redAccent, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.blueGrey, Colors.white),
                calcButton('5', Colors.blueGrey, Colors.white),
                calcButton('6', Colors.blueGrey, Colors.white),
                calcButton('-', Colors.redAccent, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('1', Colors.blueGrey, Colors.white),
                calcButton('2', Colors.blueGrey, Colors.white),
                calcButton('3', Colors.blueGrey, Colors.white),
                calcButton('+', Colors.redAccent, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('+/-', Colors.deepPurple, Colors.white),
                calcButton('0', Colors.blueGrey, Colors.white),
                calcButton('.', Colors.deepPurple, Colors.white),
                calcButton('=', Colors.yellowAccent, Colors.black),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
