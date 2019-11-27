import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: listMyWidgets()),
        ),
      ),
    );
  }

  List<Widget> listMyWidgets() {
    List<MaterialColor> colors = new List();
    colors.add(Colors.blue);
    colors.add(Colors.teal);
    colors.add(Colors.green);
    colors.add(Colors.red);
    colors.add(Colors.yellow);
    colors.add(Colors.blueGrey);
    colors.add(Colors.deepOrange);

    List<Widget> list = new List();
    for (var i = 0; i < 7; i++) {
      list.add(Expanded(
        child: new RaisedButton(
          color: colors[i],
          onPressed: () {
            final AudioCache player = AudioCache();
            player.play('note${i + 1}.wav');
          },
        ),
      ));
    }

    return list;
  }
}
