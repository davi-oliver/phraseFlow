import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:phrase_flow/model/question.dart';
part 'store.g.dart';

class QuestionarioStore = _QuestionarioStoreBase with _$QuestionarioStore;

abstract class _QuestionarioStoreBase with Store {
  @observable
  ObservableList<ModelQuestion> questions = ObservableList<ModelQuestion>();

  ObservableList<TextEditingController> controllers =
      ObservableList<TextEditingController>();

  @action
  void addQuestion(question) {
    controllers.add(TextEditingController());
    questions.add(ModelQuestion.fromJson(question));
  }

  @action
  void removeQuestion(ModelQuestion question) {
    questions.remove(question);
  }

  @action
  void clearQuestions() {
    questions.clear();
  }

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}
