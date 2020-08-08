// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeListController on _PokeListControllerBase, Store {
  final _$valueAtom = Atom(name: '_PokeListControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$pokeListAtom = Atom(name: '_PokeListControllerBase.pokeList');

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

  final _$_PokeListControllerBaseActionController =
      ActionController(name: '_PokeListControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PokeListControllerBaseActionController.startAction(
        name: '_PokeListControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PokeListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getList() {
    final _$actionInfo = _$_PokeListControllerBaseActionController.startAction(
        name: '_PokeListControllerBase.getList');
    try {
      return super.getList();
    } finally {
      _$_PokeListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
pokeList: ${pokeList}
    ''';
  }
}
