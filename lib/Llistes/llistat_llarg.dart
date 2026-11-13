import 'package:flutter/material.dart';
import '../funcionalitats/usuaris.dart';
import '../layouts/layout1.dart';

class LlistatLlarg extends StatelessWidget {
  const LlistatLlarg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Llistat Llarg'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: llistaLlarga.length,
        itemBuilder: (context, index) {
          return Usuari(objecte1: llistaLlarga[index]);
        },
      ),
    );
  }
}