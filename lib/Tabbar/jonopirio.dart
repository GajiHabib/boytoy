// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:math';

import 'package:boytoy/Tabbar/shuru.dart';
import 'package:flutter/material.dart';

class Jonopirio extends StatelessWidget {
  const Jonopirio({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children:[
        Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView(children: [
              Image.asset(
                'assets/page.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/page1.jpg',
                fit: BoxFit.cover,
              ),
            ],),
          )),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount:di.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio:0.4,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            di[index].img,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(di[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(di[index].writer),
                        Text(di[index].tara),
                        Text(di[index].price),
                ],
              );
            },
          )

      ],),
    );
  }
}
class ditio {
  final String img;
  final String title;
  final String writer;
  final String tara;
  final String price;

  ditio(
      {required this.img,
      required this.title,
      required this.writer,
      required this.tara,
      required this.price});
}

List di = [
  ditio(
      img: 'assets/phto1.jpg',
      title: 'পাইন বনের যোদ্ধা',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto2.jpg',
      title: 'আশার আলো ইমাম',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto3.jpg',
      title: 'প্রচলিত ইসলামি ব্যাংকিং',
      writer: 'আবু উসামা',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto4.jpg',
      title: 'আকাশের ওপারে আকাশ',
      writer: 'লস্ট মডেস্টি',
      tara: '++++++',
      price: '20৳'),

       ditio(
      img: 'assets/phto5.jpg',
      title: 'পাইন বনের যোদ্ধা',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto6.jpg',
      title: 'আশার আলো ইমাম',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto7.jpg',
      title: 'প্রচলিত ইসলামি ব্যাংকিং',
      writer: 'আবু উসামা',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto8.jpg',
      title: 'আকাশের ওপারে আকাশ',
      writer: 'লস্ট মডেস্টি',
      tara: '++++++',
      price: '20৳'),

       ditio(
      img: 'assets/phto9.jpg',
      title: 'পাইন বনের যোদ্ধা',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto10.jpg',
      title: 'আশার আলো ইমাম',
      writer: 'ইমরান রাইহান',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto11.jpg',
      title: 'প্রচলিত ইসলামি ব্যাংকিং',
      writer: 'আবু উসামা',
      tara: '++++++',
      price: '20৳'),
      ditio(
      img: 'assets/phto12.jpg',
      title: 'আকাশের ওপারে আকাশ',
      writer: 'লস্ট মডেস্টি',
      tara: '++++++',
      price: '20৳'),
      
      
];
