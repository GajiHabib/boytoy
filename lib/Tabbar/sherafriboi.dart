import 'package:boytoy/Tabbar/jonopirio.dart';
import 'package:flutter/material.dart';

class Sherafriboi extends StatelessWidget {
  const Sherafriboi({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: di.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:0.4,
                crossAxisCount: 3),
          itemBuilder:(context, index) {
            return Column(children: [
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Image.asset(di[index].img,fit: BoxFit.cover,),
               ),
               Text(di[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
               Text(di[index].writer),
               Text(di[index].tara),
               Text(di[index].price),
            ],);
          },),
    );
  }
}
