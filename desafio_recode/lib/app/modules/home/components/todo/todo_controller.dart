import 'package:desafio_recode/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {

  final ILocalStorage _storage = Modular.get();

  @observable
  String text = '';

  @action
  setText(String value) => text = value;

  @observable
  ObservableList<String> list = <String>[].asObservable();

  _TodoControllerBase(){
    init();
  }

  @action
  init() async{
    List<String> listLocal = await _storage.get('list');
    if(listLocal == null){
      list = <String>[].asObservable();
    }else{
      list = listLocal.asObservable();
    }
  }

  @action
  void save(){
    list.add(text);
    print(list[0].toString());
    _storage.put('list', list);
  }

  void remove(int index){
    list.removeAt(index);
    _storage.put('list', list);
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
