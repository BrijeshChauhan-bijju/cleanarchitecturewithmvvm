import 'package:flutter/material.dart';
import 'package:fluttercleanarwithmvvm/main.dart';
import 'package:fluttercleanarwithmvvm/presentation/pokemon_list/ViewPokemonList.dart';

class PokemonHome extends StatefulWidget {


  PokemonHome();

  @override
  _PokemonHomeState createState() => new _PokemonHomeState();
}

class _PokemonHomeState extends State<PokemonHome>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter MVVM"),
        elevation: 0.7,
        actions: <Widget>[
          new Icon(Icons.more_vert)
        ],
      ),
      body:new ViewPokemonList(),
    );
  }
}
