import 'package:fluttercleanarwithmvvm/data/model/Pokemon.dart';
import 'package:fluttercleanarwithmvvm/domain/BaseUseCase.dart';
import 'package:fluttercleanarwithmvvm/data/repository/PokemonRepository.dart';

class GetPokemonListUseCase extends BaseUseCase<List<Pokemon>> {
  PokemonRepository pokemonRepository;

  GetPokemonListUseCase(PokemonRepository pokemonRepository) {
    this.pokemonRepository = pokemonRepository;
  }

  @override
  Future<List<Pokemon>> perform() {
    return pokemonRepository.getPokemonList();
  }
}
