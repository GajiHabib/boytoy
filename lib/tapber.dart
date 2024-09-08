import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tapber extends StatelessWidget {
  const Tapber({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length:10,
      child:Scaffold(
        appBar: AppBar(
          bottom:Tab(
            child: Text('aha'),
          )
        ),
        
      ) ,
    );
  }
}