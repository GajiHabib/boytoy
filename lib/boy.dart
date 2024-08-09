// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, unnecessary_import

import 'package:boytoy/rijarf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class boy extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   boy({super.key, required this.index});

final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Row(
          children: [
          Image.asset(info[index].img,height: 20,),
          SizedBox(width:5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(info[index].title),
              Text(info[index].orthar)
            ],),
          )
        ],),
      ),
    );
  }
}

