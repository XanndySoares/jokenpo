import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const JokenpoApp());
}

class JokenpoApp extends StatefulWidget {
  const JokenpoApp({Key? key}) : super(key: key);

  @override
  State<JokenpoApp> createState() => _JokenpoAppState();
}

class _JokenpoAppState extends State<JokenpoApp> {
  int numeroJogado1 = 1;
  int numeroJogado2 = 1;

  void Jogar() {
    numeroJogado1 = Random().nextInt(3) + 1;
    numeroJogado2 = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          elevation: 0,
          centerTitle: true,
          title: Text('Jokenpo'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Jogar();
                    });
                  },
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('imagens/jogada$numeroJogado2.png'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Jogar();
                    });
                  },
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('imagens/jogada$numeroJogado1.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
