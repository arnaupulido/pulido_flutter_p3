import 'package:flutter/material.dart';
import '../pantalles menu/pantallaInici.dart';
import '../Llistes/llistat_llarg.dart';
import '../pantalles menu/perfil.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();

}
class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú lateral'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 60,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                child: Text("Menú"),
              ),
            ),
           
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeMenu(),
                  ),
                );              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Llistat"),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LlistatLlarg(),
                  ),
                );              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Perfil(),
                  ),
                );              },
            ),

          ],
        ),
      ),
      body: _contingutPrincipal(),
    );
  }
  Widget _contingutPrincipal() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Elements a configurar dins l\'Scaffold: \n drawer: Drawer(...) ....',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Només pots tornar enrerar fent el gest de lliscar des del marge esquerre de la pantalla cap a la dreta, o bé prement el botó de tornar enrere del dispositiu.',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
