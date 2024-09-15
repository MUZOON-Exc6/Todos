import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:todos/core/models/Todos.dart';

class TodosVM{
  Dio dio = Dio();
  Future<List<Todos>?> getTodo() async{
    try {
      Response res = await dio.get("https://dummyjson.com/todos");

      //List<Map<String,dynamic>>? allTodo = res.data!.values[0];
     // List<Todos>? allTodo = res.data!.values["todos"].toList();

      Map<String,dynamic> allTodos = res.data;
      List<dynamic> list = allTodos["todos"];
      List<Todos> listOfTodos = list.map((e)=> Todos.fromJson(e)).toList();
      return listOfTodos;
    }
    catch(e){
      print("the exception is $e");
    }
  }

  Future <List<Todos>?> complitedTodos() async {
    List <Todos>? todosList = getTodo() as List<Todos>?;
    List<Todos>? completed = todosList!.where((e){
      if(e.completed == true)
        return true;
      else return false;
    }).toList();
    return completed;
  }
  }
