import 'package:flutter/material.dart';

class BichosPagina extends StatefulWidget {
  const BichosPagina({super.key});

  @override
  State<BichosPagina> createState() => _BichosPaginaState();
}

class _BichosPaginaState extends State<BichosPagina> {
  @override
  Widget build(BuildContext context) {

    //double largura = MediaQuery.of(context).size.width;
    //double altura = MediaQuery.of(context).size.height;
    
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/vaca.png"),
        )
      ],
    );
  }
}