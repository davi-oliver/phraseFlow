// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionarioStore on _QuestionarioStoreBase, Store {
  late final _$questionsAtom =
      Atom(name: '_QuestionarioStoreBase.questions', context: context);

  @override
  ObservableList<ModelQuestion> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(ObservableList<ModelQuestion> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  late final _$controllerPageViewAtom =
      Atom(name: '_QuestionarioStoreBase.controllerPageView', context: context);

  @override
  PageController get controllerPageView {
    _$controllerPageViewAtom.reportRead();
    return super.controllerPageView;
  }

  @override
  set controllerPageView(PageController value) {
    _$controllerPageViewAtom.reportWrite(value, super.controllerPageView, () {
      super.controllerPageView = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_QuestionarioStoreBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_QuestionarioStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_QuestionarioStoreBaseActionController =
      ActionController(name: '_QuestionarioStoreBase', context: context);

  @override
  void setSelectedIndex(int value) {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(value);
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setControllerPageView(PageController valueController) {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.setControllerPageView');
    try {
      return super.setControllerPageView(valueController);
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateControllerPageView() {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.animateControllerPageView');
    try {
      return super.animateControllerPageView();
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addQuestion(dynamic question) {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.addQuestion');
    try {
      return super.addQuestion(question);
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeQuestion(ModelQuestion question) {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.removeQuestion');
    try {
      return super.removeQuestion(question);
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearQuestions() {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.clearQuestions');
    try {
      return super.clearQuestions();
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_QuestionarioStoreBaseActionController.startAction(
        name: '_QuestionarioStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_QuestionarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
questions: ${questions},
controllerPageView: ${controllerPageView},
selectedIndex: ${selectedIndex},
loading: ${loading}
    ''';
  }
}
