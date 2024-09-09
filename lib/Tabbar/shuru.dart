// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shuru extends StatelessWidget {
  const Shuru({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: PageView(
            children: [
              Image.asset(
                'assets/page.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/page1.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/boy.jpg')),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'তোমার মনের মধ্যিখানি',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('মিমি মুসকান'),
                SizedBox(
                  height: 20,
                ),
                Text('Published by'),
                SizedBox(
                  height: 20,
                ),
                Text('Published Date'),
                SizedBox(
                  height: 20,
                ),
                Text('Language'),
                SizedBox(
                  height: 20,
                ),
                Text('Categories'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '60৳',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      BooksGridView(gridTitle: 'এ সপ্তাহের বেস্ট সেলার', gridList: ru),
      BooksGridView(gridTitle: 'Bochore Sera Boi', gridList: ru),
       BooksGridView(gridTitle: 'ইসলামিক বই', gridList: ru),
      Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'এ সপ্তাহে নতুন',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text('আরো দেখুন'),
          ],
        ),
      )
    ]));
  }
}

class BooksGridView extends StatelessWidget {

  final String gridTitle;
  final List gridList;
  const BooksGridView({
    super.key,
    required this.gridTitle,
    required this.gridList,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              gridTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: gridList.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount
                ( crossAxisCount: 2,),
            itemBuilder: (context, index) {
              var bookInfo = gridList[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(bookInfo.img, fit: BoxFit.fill),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          bookInfo.title,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(bookInfo.writer),
                        Text(bookInfo.tara),
                        Text(
                          bookInfo.price,
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ],
    );
  }
}

class shu {
  final String img;
  final String title;
  final String writer;
  final String tara;
  final String price;

  shu(
      {required this.img,
      required this.title,
      required this.writer,
      required this.tara,
      required this.price});
}

List ru = [
  shu(
      img: 'assets/photo1.jpg',
      title: 'প্রেমের পাঁচফোড়ন',
      writer: 'আফনান লারা',
      tara: '++++++',
      price: '180৳'),
  shu(
      img: 'assets/photo2.jpg',
      title: 'বর আসবে এখুনি',
      writer: 'ইসরাত আরা ইতি',
      tara: '++++++',
      price: '45৳'),
  shu(
      img: 'assets/photo3.jpg',
      title: 'প্রানেশা',
      writer: 'সাইয়্যারা খান',
      tara: '++++++',
      price: '35৳'),
  shu(
      img: 'assets/photo4.jpg',
      title: 'এক রূপকথার প্রেমে!',
      writer: 'নুসরাত সুলতানা',
      tara: '++++++',
      price: '85৳'),
  shu(
      img: 'assets/photo5.jpg',
      title: 'সেগুনবাগিচায় তারার',
      writer: 'প্রিমা ফারনাজ চৌধুরী',
      tara: '++++++',
      price: '70৳'),
  shu(
      img: 'assets/photo6.jpg',
      title: 'পারিজাত',
      writer: 'সানজিদা বিনতে সফি',
      tara: '++++++',
      price: '50৳'),
  shu(
      img: 'assets/photo7.jpg',
      title: 'চিত্রছায়া',
      writer: 'ইলমা বেহরোজ',
      tara: '++++++',
      price: '75৳'),
  shu(
      img: 'assets/photo8.jpg',
      title: 'অ্যা ব্রিফ হিস্ট্রি',
      writer: 'ফয়জুল হক',
      tara: '++++++',
      price: '60৳'),
  shu(
      img: 'assets/photo9.jpg',
      title: 'স্টপ ওভারথিংকিং',
      writer: 'ত্বাইরান আবির',
      tara: '++++++',
      price: '49৳'),
  shu(
      img: 'assets/photo10.jpg',
      title: 'মাস্টার অব দ্য ওয়ার্ল্ড',
      writer: 'জুল ভার্ন',
      tara: '++++++++',
      price: '20৳'),
];

