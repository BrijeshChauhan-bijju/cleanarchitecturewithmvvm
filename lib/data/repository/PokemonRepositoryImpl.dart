import 'package:fluttercleanarwithmvvm/data/model/Pokemon.dart';
import 'package:fluttercleanarwithmvvm/data/remote/PokemonApi.dart';
import 'package:fluttercleanarwithmvvm/data/repository/PokemonRepository.dart';

class PokemonRepositoryImpl implements PokemonRepository{
  PokemonApi pokemonApi;
  PokemonRepositoryImpl(PokemonApi pokemonApi){
    this.pokemonApi = pokemonApi;
  }

  @override
  Future<List<Pokemon>> getPokemonList() {
    return pokemonApi.getPokemonList();
  }
}