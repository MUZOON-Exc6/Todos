import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerForm extends StatelessWidget {
  Widget widget ;
   ContainerForm({super.key,required this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color: Colors.teal[200],
      ),
      child: widget,
    );
  }
}
