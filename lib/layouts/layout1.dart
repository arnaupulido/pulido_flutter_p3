import 'package:flutter/material.dart';
import '../funcionalitats/usuaris.dart';

class Usuari extends StatelessWidget {

  //Aixo fa ue per cada usuari ue es fa es fagi servir el següent disseny
  final Usuaris objecte1;

  const Usuari({super.key, required this.objecte1});
  //Aixo es del codi d'exemple el ual demana la practica ue s'utilitzi
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Usuari',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.person, color: Colors.deepPurple),
                const SizedBox(width: 8),
                Text(
                  'Nom: ${objecte1.nom}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.email, color: Colors.deepPurple),
                const SizedBox(width: 8),
                Text(
                  'Correu: ${objecte1.email}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}