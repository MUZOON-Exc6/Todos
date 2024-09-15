import 'package:flutter/material.dart';
import 'package:todos/core/viewmodel/TodosVM.dart';
import 'package:todos/core/models/Todos.dart';
import 'dart:ffi';
class AllTodos extends StatelessWidget {
  const AllTodos({super.key});

  @override
  Widget build(BuildContext context) {
    TodosVM tvm = TodosVM();
    return Scaffold(
      backgroundColor: Color(0XFFFEF9EB),
      body: FutureBuilder(
        future: tvm.getTodo()
          ,builder: (ctx,snapshot){
          if(snapshot.connectionState == ConnectionState.done)
          {
            return ListView.builder(
              itemCount: snapshot.data!.length,
                itemBuilder: (ctx,index){
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Column(children: [
                    ListTile(title: Text("${snapshot.data![index].todo}"),
                    subtitle: Text("${snapshot.data![index].completed.toString()}"),
                      leading: CircleAvatar(child: Text("${snapshot.data![index].userId.toString()}"),),
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
