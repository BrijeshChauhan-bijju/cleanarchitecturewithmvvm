import 'package:fluttercleanarwithmvvm/data/model/Pokemon.dart';
import 'package:fluttercleanarwithmvvm/data/remote/PokemonApiImpl.dart';
import 'package:fluttercleanarwithmvvm/domain/GetPokemonListUseCase.dart';
import 'package:fluttercleanarwithmvvm/data/repository/PokemonRepositoryImpl.dart';
import 'package:rxdart/rxdart.dart';

class ViewModelPokemonList {
  var pokemonListSubject = PublishSubject<List<Pokemon>>();

  Observable<List<Pokemon>> get pokemonList => pokemonListSubject.stream;
  GetPokemonListUseCase getPokemonListUseCase =
      GetPokemonListUseCase(PokemonRepositoryImpl(PokemonApiImpl()));

  void getPokemonList() async {
    try {
      pokemonListSubject = PublishSubject<List<Pokemon>>();
      pokemonListSubject.sink.add(await getPokemonListUseCase.perform());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      pokemonListSubject.sink.addError(e);
    }
  }

  void closeObservable() {
    pokemonListSubject.close();
  }
}
