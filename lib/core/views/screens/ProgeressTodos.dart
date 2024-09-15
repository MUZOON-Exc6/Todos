import 'package:flutter/material.dart';

import '../../models/Todos.dart';
import '../../viewmodel/TodosVM.dart';

class ProgeressTodos extends StatelessWidget {
  const ProgeressTodos({super.key});

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
          List <Todos>? improgeress = snapshot.data!.where((x){
            if(x.completed == false)
              return true;
            else return false;
          }).toList();
          return ListView.builder(
              itemCount: improgeress.length,
              itemBuilder: (ctx,index){
                //if(snapshot.data![index].completed == false)
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Column(children: [
                    ListTile(title: Text("${improgeress[index].todo}"),
                      subtitle: Text("${improgeress[index].completed.toString()}"),
                      leading: CircleAvatar(child: Text("${improgeress[index].userId.toString()}"),),
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
