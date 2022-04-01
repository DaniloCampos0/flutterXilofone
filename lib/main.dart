import 'package:ds3_an_flutter_xylophone/pages/xylophone.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget criarBotaoXilofone({Color? cor, int? numero}) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          var player = AudioCache();
          player.play('sounds/note$numero.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Danilo'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.red, numero: 1),
                  criarBotaoXilofone(cor: Colors.orange, numero: 2),
                  criarBotaoXilofone(cor: Colors.yellow, numero: 3),
                  criarBotaoXilofone(cor: Colors.green, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.green, numero: 4),
                  criarBotaoXilofone(cor: Colors.yellow, numero: 3),
                  criarBotaoXilofone(cor: Colors.orange, numero: 2),
                  criarBotaoXilofone(cor: Colors.red, numero: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
