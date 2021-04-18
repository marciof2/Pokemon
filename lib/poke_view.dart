import 'package:flutter/material.dart';
import 'package:pokemo/poke_controller.dart';
import 'package:pokemo/pokemon.dart';

class PokeView extends StatefulWidget {
  @override
  _PokeViewState createState() => _PokeViewState();
}

class _PokeViewState extends State<PokeView> {
  final controller = PokeController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<Pokemon>(
            future: controller.pokemon,
            builder: (context, snapshot) {},
          ),
          ElevatedButton(
            onPressed: () {
              controller.loadPokemon();
            },
            child: const Text('Load Pokemon'),
          ),
        ],
      ),
    );
  }
}
