import 'package:aprenda_ingles/bichos_page.dart';
import 'package:aprenda_ingles/numeros_page.dart';
import 'package:aprenda_ingles/vogais_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3, 
      vsync: this,
      initialIndex: 0
    );

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprenda inglês"),
        backgroundColor: Colors.brown,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais")
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          BichosPagina(),
          NumerosPagina(),
          VogaisPagina()
        ]
      ),
    );
  }
}