import 'package:fluttercleanarwithmvvm/data/model/Pokemon.dart';

abstract class PokemonRepository{
  Future<List<Pokemon>> getPokemonList();
}