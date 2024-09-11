//  unused_import, must_be_immutable, unnecessary_import, unused_label
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:boytoy/Tabbar/jonopirio.dart';
import 'package:boytoy/Tabbar/ketagori.dart';
import 'package:boytoy/Tabbar/prokashok.dart';
import 'package:boytoy/Tabbar/sherafriboi.dart';
import 'package:boytoy/Tabbar/sherakenaboi.dart';
import 'package:boytoy/Tabbar/shuru.dart';
import 'package:boytoy/Tabbar/wright.dart';
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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'শুরু'),
         BottomNavigationBarItem(icon: Icon(Icons.self_improvement),label: ' সেল্ফ'),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: 'বই'),
         
      ]),
       body: TabBarView(
          children: [
            Shuru(index: 1),
          Jonopirio(index: 1),
           Ketagori(index: 1,),
           Sherafriboi(index: 1),
           Sherakenaboi(index: 1),
           Wright(index: 1,),
            prokashok(index: 1),
           
          ],
        ),
        
      )
      
    );
  }
}
