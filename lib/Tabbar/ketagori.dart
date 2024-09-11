// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Ketagori extends StatelessWidget {
  const Ketagori({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    var arrone = [
      'স্ব-নির্ভর',
      'সায়েন্স ফিকশন',
      'রাজনীতি',
      'বইটই এক্সক্লুসিভ',
      'কমিক',
      'কবিতা',
      'ছোটগল্প',
      'শিশু কিশোর',
      'বাচ্চাদের গল্প',
      'রেসিপি',
      'জীবনী',
      'সমকালিন গল্প',
      'অডিও'
    ];
    return Scaffold(
        body: ListView.separated(
      itemBuilder: (
        context, index) {
        return Card(
          color: Colors.green.shade300,
          child: ListTile(
            title: Text(arrone[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Image.asset(habi[index].Image),
            // leading: Container(
            //   height:50,
            //   width: 50,
            //   decoration: BoxDecoration(color: Colors.cyan.shade400),
            //   // child: Image.asset(habi[index]),
            //   ),
            
          ),
        );
      },
      itemCount: arrone.length,
      separatorBuilder: (context, index) {
        return Divider(
          height:30,
          thickness:1,
        );
      },
    ));
  }
}
class coll{
 final String Image;

  coll({required this.Image});

  
}
List habi=[
 coll(Image: 'assets/abaut1.jpg'),
  coll(Image: 'assets/abaut2.jpg'),
   coll(Image: 'assets/abaut3.jpg'),
    coll(Image: 'assets/abaut4.jpg'),
     coll(Image: 'assets/abaut5.jpg'),
      coll(Image: 'assets/abaut6.jpg'),
       coll(Image: 'assets/abaut7.jpg'),
        coll(Image: 'assets/abaut8.jpg'),
         coll(Image: 'assets/abaut9.jpg'),
          coll(Image: 'assets/abaut10.jpg'),
           coll(Image: 'assets/abaut11.jpg'),
            coll(Image: 'assets/abaut12.jpg'),
            coll(Image: 'assets/abaut12.jpg'),
];
