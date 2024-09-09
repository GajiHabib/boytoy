// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Ketagori extends StatelessWidget {
  const Ketagori({
    super.key,
  });

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
      itemBuilder: (context, index) {
        return Card(
          color: Colors.amber.shade300,
          child: ListTile(
            title: Text(arrone[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Container(
              height:50,
              width: 50,
              decoration: BoxDecoration(color: Colors.cyan.shade400),
              child: Icon(Icons.family_restroom)),
            
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
 final String icodata;

  coll({required this.icodata});
}
List habi=[
  coll(icodata: '')
];
