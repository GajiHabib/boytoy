import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
          Image.asset(habib[index].Image,fit: BoxFit.fill,),
          
        ],
      ) ,
    );
  }
}
class coll{
 final String Image;

  coll({required this.Image});

}
List habib=[
  coll(Image: 'assets/page.jpg'),
  coll(Image: 'assets/page.jpg'),
];