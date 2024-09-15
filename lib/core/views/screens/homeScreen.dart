import 'package:flutter/material.dart';
import 'package:todos/core/views/components/TextStyling.dart';
import 'package:todos/core/views/screens/AllTodos.dart';
import 'package:todos/core/views/screens/ComplitedTodos.dart';
import 'package:todos/core/views/screens/ProgeressTodos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child:Scaffold(
          appBar: AppBar(title: Text(" Todos ",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.message_outlined,color: Colors.white,),
            backgroundColor: Colors.teal,
            bottom: TabBar(tabs: [
              TxtStyling(txt: "all_Todos"),
              TxtStyling(txt: "Completed"),
              TxtStyling(txt: "Improgeress"),
            ]),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(children: [AllTodos(),ComplitedTodos(),ProgeressTodos()]),
          ),
        )
    );
  }
}
