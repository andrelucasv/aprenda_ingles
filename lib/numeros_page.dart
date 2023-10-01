import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumerosPagina extends StatefulWidget {
  const NumerosPagina({super.key});

  @override
  State<NumerosPagina> createState() => _NumerosPaginaState();
}

final audioPlayer = AudioPlayer();

  _executarAudio(String nomeAudio) async {

    await audioPlayer.play(AssetSource("audios/$nomeAudio.mp3"));

  }

class _NumerosPaginaState extends State<NumerosPagina> {
  @override
  Widget build(BuildContext context) {
    
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executarAudio("1");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("2");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("4");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("5");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("6");
          },
          child: Image.asset("assets/images/6.png"),
        )
      ],
    );

  }
}