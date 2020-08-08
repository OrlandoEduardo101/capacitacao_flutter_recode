import 'package:desafio_recode/app/modules/home/model/user_model.dart';
import 'package:desafio_recode/app/modules/home/repository/github_repository.dart';
import 'package:mobx/mobx.dart';

part 'github_controller.g.dart';

class GithubController = _GithubControllerBase with _$GithubController;

abstract class _GithubControllerBase with Store {
  final GithubRepository repository;

  @observable
  ObservableFuture<UserModel> user;

  _GithubControllerBase(this.repository) {
    getUser();
    initi();
    print("USER:" + user.toString());
    setUserName("");
  }

  @observable
  String username = "";

  @observable
  bool init;

  @observable
  bool search = false;

  @action
  setUserName(value) => username = value;

  @action
  initi() {
    init = false;
  }

  @action
  Future getUser() {
    init = true;
    user = repository.getUser(username).asObservable();
    //print("NAMEE:"+user.value.name);
  }
}
