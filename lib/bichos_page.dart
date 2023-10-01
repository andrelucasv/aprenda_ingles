import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BichosPagina extends StatefulWidget {
  const BichosPagina({super.key});

  @override
  State<BichosPagina> createState() => _BichosPaginaState();
}

class _BichosPaginaState extends State<BichosPagina> {

  final audioPlayer = AudioPlayer();

  _executarAudio(String nomeAudio) async {

    await audioPlayer.play(AssetSource("audios/$nomeAudio.mp3"));

  }

  @override
  Widget build(BuildContext context) {

    //double largura = MediaQuery.of(context).size.width;
    //double altura = MediaQuery.of(context).size.height;
    
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executarAudio("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executarAudio("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        )
      ],
    );
  }
}