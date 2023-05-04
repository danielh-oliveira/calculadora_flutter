import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            teclado(),
          ],
        ),
      ),
    );
  }
}

Widget teclado() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botaoNumero("9"),
            const SizedBox(width: 16),
            botaoNumero("8"),
            const SizedBox(width: 16),
            botaoNumero("7"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botaoNumero("6"),
            const SizedBox(width: 16),
            botaoNumero("5"),
            const SizedBox(width: 16),
            botaoNumero("4"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botaoNumero("3"),
            const SizedBox(width: 16),
            botaoNumero("2"),
            const SizedBox(width: 16),
            botaoNumero("1"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botaoNumero("0", 336.0),
          ],
        ),
      ),
    ],
  );
}

Widget botaoNumero(String numero, [double? sizedBoxW]) {
  if (sizedBoxW == null) {
    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: () => aoClicarNumero(numero),
        child: Text(numero),
      ),
    );
  } else {
    return SizedBox(
      width: sizedBoxW,
      height: 50,
      child: ElevatedButton(
        onPressed: () => aoClicarNumero(numero),
        child: Text(numero),
      ),
    );
  }
}

aoClicarNumero(String numero) {
  print(numero);
}
