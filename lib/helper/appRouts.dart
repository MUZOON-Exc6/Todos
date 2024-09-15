import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todos/core/views/screens/AllTodos.dart';
import 'package:todos/core/views/screens/ComplitedTodos.dart';
import 'package:todos/core/views/screens/ProgeressTodos.dart';
import 'package:todos/core/views/screens/homeScreen.dart';

class Approuts{

  static Route <dynamic>? routManager(RouteSettings settings){

    switch(settings.name){
      case '/home': return MaterialPageRoute(builder: (ctx)=> HomeScreen());
      case '/todos': return MaterialPageRoute(builder: (ctx)=> AllTodos());
      case '/complited': return MaterialPageRoute(builder: (ctx)=>ComplitedTodos());
      case '/progeress': return MaterialPageRoute(builder: (ctx)=> ProgeressTodos());
      default: return MaterialPageRoute(builder: (ctx)=> HomeScreen());
    }
  }
}