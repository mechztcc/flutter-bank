// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardStore on _DashboardStoreBase, Store {
  final _$funcsAtom = Atom(name: '_DashboardStoreBase.funcs');

  @override
  List<Functionalities> get funcs {
    _$funcsAtom.reportRead();
    return super.funcs;
  }

  @override
  set funcs(List<Functionalities> value) {
    _$funcsAtom.reportWrite(value, super.funcs, () {
      super.funcs = value;
    });
  }

  final _$typesPixAtom = Atom(name: '_DashboardStoreBase.typesPix');

  @override
  List<KeyPix> get typesPix {
    _$typesPixAtom.reportRead();
    return super.typesPix;
  }

  @override
  set typesPix(List<KeyPix> value) {
    _$typesPixAtom.reportWrite(value, super.typesPix, () {
      super.typesPix = value;
    });
  }

  final _$_DashboardStoreBaseActionController =
      ActionController(name: '_DashboardStoreBase');

  @override
  Icon getIcon(int id) {
    final _$actionInfo = _$_DashboardStoreBaseActionController.startAction(
        name: '_DashboardStoreBase.getIcon');
    try {
      return super.getIcon(id);
    } finally {
      _$_DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Icon getPixIcon(int id) {
    final _$actionInfo = _$_DashboardStoreBaseActionController.startAction(
        name: '_DashboardStoreBase.getPixIcon');
    try {
      return super.getPixIcon(id);
    } finally {
      _$_DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
funcs: ${funcs},
typesPix: ${typesPix}
    ''';
  }
}
