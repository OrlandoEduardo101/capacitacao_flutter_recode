// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$pokeListAtom = Atom(name: '_HomeControllerBase.pokeList');

  @override
  ObservableFuture<List<PokemonModel>> get pokeList {
    _$pokeListAtom.reportRead();
    return super.pokeList;
  }

  @override
  set pokeList(ObservableFuture<List<PokemonModel>> value) {
    _$pokeListAtom.reportWrite(value, super.pokeList, () {
      super.pokeList = value;
    });
  }

  final _$getPokesAsyncAction = AsyncAction('_HomeControllerBase.getPokes');

  @override
  Future<dynamic> getPokes() {
    return _$getPokesAsyncAction.run(() => super.getPokes());
  }

  @override
  String toString() {
    return '''
pokeList: ${pokeList}
    ''';
  }
}
