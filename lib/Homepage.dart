// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, must_be_immutable, unnecessary_import, unused_label

import 'package:boytoy/Tabbar/hshur.dart';
import 'package:boytoy/Tabbar/shuru.dart';
import 'package:boytoy/pageviwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 7,
     child:Scaffold(
      appBar: AppBar(
         title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
          onPressed: () {},
          icon: Image.asset('assets/logo.png',height:50,width:100)),
          SizedBox(width:110,),
          IconButton(onPressed: () {}, icon: Icon(Icons.search),),
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
          IconButton(onPressed: () {}, icon: Icon(Icons.card_giftcard))
         ],),
         bottom: TabBar(
          isScrollable: true,
          tabs: [
          Tab(text: 'শুরু',),  
           Tab(text: 'জনপ্রিয় বই',),
            Tab(text: 'ক্যাটাগরি',),
            Tab(text: 'সেরা ফ্রি বই ',),
           Tab(text: 'সেরা কেনা বই',),
            Tab(text: 'লেখক',),
            Tab(text: 'প্রকাশক',),
         ]),
         
      ),
      
       body: TabBarView(
          children: [
           Center(child:GridView.builder(
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount:2), itemBuilder:(
              context, index) {
              return Shuru(index: index);
            },)),
       
            Center(child: Text('Search Tab Content')),
            Center(child: Text('Notifications Tab Content')),
            Center(child: Text('Home Tab Content')),
            Center(child: Text('Search Tab Content')),
            Center(child: Text('Notifications Tab Content')),
            Center(child: Text('Notifications Tab Content'))
          ],
        ),
        
      )
      
    );
  }
}
