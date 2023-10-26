import 'package:mobx/mobx.dart';
import 'package:phrase_flow/model/user.dart';
part 'global_store.g.dart';

class GlobalStore = _GlobalStoreBase with _$GlobalStore;

abstract class _GlobalStoreBase with Store {
  @observable
  ModelUser? user;

  @action
  void setUser(ModelUser? value) => user = value;
}
