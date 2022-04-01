import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  bool isXilophone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isXilophone = true;
                });
              },
              icon: const Icon(Icons.list)),
          IconButton(
              onPressed: () {
                setState(() {
                  isXilophone = false;
                });
              },
              icon: const Icon(Icons.grid_on)),
        ],
        title: const Text('Flutter Xilophone'),
      ),
      body: isXilophone ? criarXilophone() : criarMemetor(),
    );
  }

  Widget criarMemetor() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              criarBotaoXilofone(
                  cor: const Color(0XFFFF1178), numero: 1, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFF1178), numero: 2, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFF1178), numero: 3, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFF1178), numero: 4, memetor: true),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              criarBotaoXilofone(
                  cor: const Color(0XFFFFF205), numero: 1, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFFF205), numero: 2, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFFF205), numero: 3, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFFFFF205), numero: 4, memetor: true),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              criarBotaoXilofone(
                  cor: const Color(0XFF01FFF4), numero: 1, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF01FFF4), numero: 2, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF01FFF4), numero: 3, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF01FFF4), numero: 4, memetor: true),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              criarBotaoXilofone(
                  cor: const Color(0XFF7CFF01), numero: 1, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF7CFF01), numero: 2, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF7CFF01), numero: 3, memetor: true),
              criarBotaoXilofone(
                  cor: const Color(0XFF7CFF01), numero: 4, memetor: true),
            ],
          ),
        ),
      ],
    );
  }

  Widget criarXilophone() {
    return Column(
      children: [
        criarBotaoXilofone(cor: Colors.red, numero: 1),
        criarBotaoXilofone(cor: Colors.orange, numero: 2),
        criarBotaoXilofone(cor: Colors.yellow, numero: 3),
        criarBotaoXilofone(cor: Colors.green, numero: 4),
        criarBotaoXilofone(cor: Colors.blue, numero: 5),
        criarBotaoXilofone(cor: Colors.indigo, numero: 6),
        criarBotaoXilofone(cor: Colors.purple, numero: 7),
      ],
    );
  }

  Widget criarBotaoXilofone({Color? cor, int? numero, bool memetor = false}) {
    return Expanded(
      child: Padding(
        padding: memetor
            ? const EdgeInsets.fromLTRB(16, 8, 8, 16)
            : const EdgeInsets.all(0),
        child: InkWell(
          splashColor: Colors.black38,
          onTap: () {
            var player = AudioCache();
            player.play('sounds/note$numero.wav');
          },
          child: Ink(color: cor),
        ),
      ),
    );
  }
}
