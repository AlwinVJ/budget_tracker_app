// ignore_for_file: unnecessary_brace_in_string_interps, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/radial_painter.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double spendAmount = 250;
    const double totalBudget = 500;
    const double radialBarPercent = spendAmount / totalBudget;
    int k = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food Budget',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 2),
                        blurRadius: 6)
                  ]),
               child: CustomPaint(
                foregroundPainter: RadialPainter(
                bgColor:Colors.green, 
                lineColor:Colors.grey.shade200, 
                percent:radialBarPercent, 
                widget:15),
                child: Center(
                  child: Text(
                    '₹${spendAmount}/₹${totalBudget}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              )),
          for(int i =10; i<spendAmount; i+=55)
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(
                color: Colors.black12,
                blurRadius: 6
              )]
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('Item ${k++}',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('₹${i.toString()}',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
                  ),
            ),
          )
        ],
      )),
    );
  }
}
