import 'package:flutter/material.dart';
import 'package:todos/core/models/Todos.dart';

import '../../viewmodel/TodosVM.dart';

class ComplitedTodos extends StatelessWidget {
  const ComplitedTodos({super.key});

  @override
  Widget build(BuildContext context) {
    TodosVM vm = TodosVM();
    return Scaffold(
      backgroundColor: Color(0XFFFEF9EB),
      body: FutureBuilder(
          future: vm.getTodo()
          ,builder: (ctx,snapshot){
        if(snapshot.connectionState == ConnectionState.done)
        {
          List<Todos>? completed = snapshot.data!.where((e){
            if(e.completed == true)
              return true;
            else return false;
          }).toList();
          return ListView.builder(
              itemCount: completed.length,
              itemBuilder: (ctx,index){
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: Column(children: [
                      ListTile(title: Text("${completed[index].todo}"),
                        subtitle: Text(
                            "${completed[index].completed.toString()}"),
                        leading: CircleAvatar(child: Text(
                            "${completed[index].userId.toString()}"),),
                      )
                    ],),
                  );
              });
        }
        else
          return Center(child: CircularProgressIndicator(),);
      }),
    );
  }
}
