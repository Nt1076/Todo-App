import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('myBox');

  void createInnitialData() {
    toDoList = [
      ['!Create Your Task', false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
