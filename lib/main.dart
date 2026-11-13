import 'package:flutter/material.dart';
import 'funcionalitats/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Dart',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Benvolguts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text('Carregant...'),
          ListTile(
            title: Text('Menu al costat', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Menu()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
        ],
      ),
    );
  }
}

