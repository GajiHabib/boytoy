// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class prokashok extends StatelessWidget {
  const prokashok({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Card(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.search,size:30,),
                SizedBox(width: 20,),
                Text('লেখক খুজুন'),
              
              ],
            ),
          ),
          Align(
            alignment:Alignment.centerLeft,
            child: Text('জনপ্রিয় লেখক',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
               Expanded(child: gridviewdata(gridList:wri)),
        ],
        ),
      ),
    );
  }
}

class gridviewdata extends StatelessWidget {
  final List gridList;
  const gridviewdata({
    super.key, required this.gridList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(    
     shrinkWrap: true,
     itemCount: wri.length,
     gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
     childAspectRatio:1,
     crossAxisCount:3),
     itemBuilder:(context, index) {
       return Column(
         children: [
           Container(
            height: 60,
            width: 60,
             child: CircleAvatar(
               backgroundImage:AssetImage(wri[index].Image),
               backgroundColor: Colors.pink,
               
               ),
           ),
                     Text(wri[index].wrighte),
                     Text(wri[index].data),
         ],
       );
                 
     },);
  }
}

class wrightt{
  final String Image;
  final String wrighte;
  final String data;

  wrightt({required this.Image, required this.wrighte, required this.data});
}
List wri=[
  wrightt(Image: 'assets/wright1.jpg', wrighte:'Ustadh Nouman', data: '২টি বই'),
    wrightt(Image: '', wrighte:'Asad Parvez', data: '৩টি'),
      wrightt(Image: 'assets/wright2.jpg', wrighte:'Ustadh Nouman', data: '৫টি বই'),
        wrightt(Image: '', wrighte:'Asad Parvez', data: '৩টি'),
          wrightt(Image: 'assets/wright3.jpg', wrighte:'Abul Assad', data: '৩টি বই'),
            wrightt(Image: 'assets/wright1.jpg', wrighte:'Asad Parvez', data: '৭টি বই'),
              wrightt(Image: 'assets/wright4.jpg', wrighte:'D. Mobarak Hossain', data: '২টি বই'),
                wrightt(Image: 'assets/wright1.jpg', wrighte:'Subrata Kumar Das', data: '৩টি বই'),
                  wrightt(Image: 'assets/wright5.jpg', wrighte:'D. Mobarak Hossain', data: '২টি বই'),
                    wrightt(Image: 'assets/wright1.jpg', wrighte:'Ustadh Nouman', data: '৯টি বই'),
                      wrightt(Image: 'assets/wright6.jpg', wrighte:'D. Mobarak Hossain', data: '৩টি বই'),
                        wrightt(Image: 'assets/wright2.jpg', wrighte:'Abul Assad', data: '২টি বই'),
                          wrightt(Image: 'assets/wright3.jpg', wrighte:'Ustadh Nouman', data: '২টি বই'),
                            wrightt(Image: 'assets/wright4.jpg', wrighte:'Asad Parvez', data: '৫টি বই'),
                              wrightt(Image: 'assets/wright5.jpg', wrighte:'Asad Parvez', data: '২টি বই'),
                                wrightt(Image: 'assets/wright6.jpg', wrighte:'D. Mobarak Hossain', data: '১টি'),
                    wrightt(Image: 'assets/wright1.jpg', wrighte:'Abul Assad', data: '২টি বই'),
                      wrightt(Image: 'assets/wright3.jpg', wrighte:'Abul Assad', data: '৪টি বই'),
                        wrightt(Image: 'assets/wright4.jpg', wrighte:'Ustadh Nouman', data: '৩টি বই'),
                          wrightt(Image: 'assets/wright5.jpg', wrighte:'Subrata Kumar Das', data: '৭টি বই'),
                            wrightt(Image: 'assets/wright6.jpg', wrighte:'Subrata Kumar Das', data: '৯টি বই'),
                              wrightt(Image: 'assets/wright1.jpg', wrighte:'Abul Assad', data: '২টিবই'),
                                
                              
];
