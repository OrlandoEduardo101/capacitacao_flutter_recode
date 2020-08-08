// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GithubController on _GithubControllerBase, Store {
  final _$userAtom = Atom(name: '_GithubControllerBase.user');

  @override
  ObservableFuture<UserModel> get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(ObservableFuture<UserModel> value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$usernameAtom = Atom(name: '_GithubControllerBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$searchAtom = Atom(name: '_GithubControllerBase.search');

  @override
  bool get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(bool value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_GithubControllerBaseActionController =
      ActionController(name: '_GithubControllerBase');

  @override
  dynamic setUserName(dynamic value) {
    final _$actionInfo = _$_GithubControllerBaseActionController.startAction(
        name: '_GithubControllerBase.setUserName');
    try {
      return super.setUserName(value);
    } finally {
      _$_GithubControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> getUser() {
    final _$actionInfo = _$_GithubControllerBaseActionController.startAction(
        name: '_GithubControllerBase.getUser');
    try {
      return super.getUser();
    } finally {
      _$_GithubControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
username: ${username},
search: ${search}
    ''';
  }
}
