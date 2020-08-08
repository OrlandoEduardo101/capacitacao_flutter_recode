import 'package:mobx/mobx.dart';

part 'show_dialog_controller.g.dart';

class ShowDialogController = _ShowDialogControllerBase
    with _$ShowDialogController;

abstract class _ShowDialogControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
