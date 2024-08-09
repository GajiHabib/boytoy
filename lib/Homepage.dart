// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unnecessary_import, unused_label

import 'package:boytoy/boy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('boytoy',style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 34, 4, 82)),),
      ),
      body: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('shuru'),
                Text('getaguru'),
                Text('jonoprio boy '),
                Text('shera boy')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Book mela 2024',style: TextStyle(fontSize: 40,color: Colors.blueAccent),),
            SizedBox(
              height: 30,
            ),
            
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount:6,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount
                    (crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return boy(index: index,);
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
