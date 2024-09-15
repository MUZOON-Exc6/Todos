
import 'package:flutter/material.dart';
class TxtStyling extends StatelessWidget {
  late String txt;
   TxtStyling({super.key,required this.txt});
  @override
  Widget build(BuildContext context) {
    return Text(txt,style: TextStyle(fontSize: 18, color: Colors.white),);
  }
}
