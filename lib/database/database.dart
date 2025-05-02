
import 'package:hive_flutter/adapters.dart';

class TodoDataBase{
  // ignore: non_constant_identifier_names
  List TodoList = [];

  final _mybox = Hive.box('mybox');

  void createData(){
    TodoList = [
      ["TODO", false]
    ];
  }

  void loadData(){
    TodoList = _mybox.get(("TODOLIST"));
  }

  void updateDataBase(){
    _mybox.put("TODO LIST", TodoList);
  }

}