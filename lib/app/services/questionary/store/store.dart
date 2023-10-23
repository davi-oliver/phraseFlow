import 'package:mobx/mobx.dart';
import 'package:phrase_flow/model/question.dart';
part 'store.g.dart';

class QuestionarioStore = _QuestionarioStoreBase with _$QuestionarioStore;

abstract class _QuestionarioStoreBase with Store {
  @observable
  ObservableList<ModelQuestion> questions = ObservableList<ModelQuestion>();

  @action
  void addQuestion(question) {
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
