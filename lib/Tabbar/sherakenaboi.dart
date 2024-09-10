import 'package:boytoy/Tabbar/jonopirio.dart';
import 'package:flutter/material.dart';

class Sherakenaboi extends StatelessWidget {
  const Sherakenaboi({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: di.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.4,
        crossAxisCount: 3), itemBuilder:(context, index) {
          return Column(children: [
         Image.asset(di[index].img,fit: BoxFit.cover,),
         Text(di[index].title),
         Text(di[index].writer),
         Text(di[index].tara),
         Text(di[index].price),
          ],);
        },),
    );
  }
}
