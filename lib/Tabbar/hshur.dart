import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hshur extends StatelessWidget {
  const Hshur({super.key, required this.index});
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
              Image.asset(hababa[index].img,fit: BoxFit.fill),
              SizedBox(width:10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 Text(hababa[index].title,style: TextStyle(fontSize:16),),
                 Text(hababa[index].writer),
                 Text(hababa[index].tara),
                 Text(hababa[index].price,style: TextStyle(fontSize: 11),)
                ],),
              )
               
            ],
          ),
        ),
      ),
    );
  }
}
class hma{
  final String img;
  final String title;
  final String writer;
  final String tara;
  final String price;

  hma({required this.img, required this.title, required this.writer, required this.tara, required this.price});
}
List hababa=[
  hma(img: 'assets/photo1.jpg',
      title: 'প্রেমের পাঁচফোড়ন',
      writer: 'আফনান লারা',
      tara: '++++++',
      price: '180৳'),
];