import 'package:flutter/material.dart';
import 'package:pokemo/poke_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke API',
      home: PokeView(),
    );
  }
}
