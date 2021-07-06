import 'package:fluttercleanarwithmvvm/data/model/Pokemon.dart';

abstract class PokemonApi{
  Future<List<Pokemon>> getPokemonList();
}