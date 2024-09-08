import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shuru extends StatelessWidget {
  const Shuru({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ru[index].img,fit: BoxFit.fill),
              SizedBox(width:10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 Text(ru[index].title,style: TextStyle(fontSize:16),),
                 Text(ru[index].writer),
                 Text(ru[index].tara),
                 Text(ru[index].price,style: TextStyle(fontSize: 11),)
                ],),
              )
               
            ],
          ),
        ),
      ),
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
