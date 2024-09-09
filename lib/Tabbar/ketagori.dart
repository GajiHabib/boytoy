import 'package:flutter/material.dart';

class Ketagori extends StatelessWidget {
  const Ketagori({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder:(context, index) {
        return keta(index: index);
      },)
    );
  }
}

class keta extends StatelessWidget {
  const keta({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('স্ব-উন্নয়ন'),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: Container(
            height:50,
            width: 40,
            color: Colors.deepPurpleAccent,
            child: Icon(Icons.family_restroom)),
        ),
      ],
    );
  }
}