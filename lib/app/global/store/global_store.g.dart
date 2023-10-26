// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GlobalStore on _GlobalStoreBase, Store {
  late final _$userAtom = Atom(name: '_GlobalStoreBase.user', context: context);

  @override
  ModelUser? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(ModelUser? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$_GlobalStoreBaseActionController =
      ActionController(name: '_GlobalStoreBase', context: context);

  @override
  void setUser(ModelUser? value) {
    final _$actionInfo = _$_GlobalStoreBaseActionController.startAction(
        name: '_GlobalStoreBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_GlobalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
