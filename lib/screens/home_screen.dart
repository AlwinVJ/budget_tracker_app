import 'package:flutter/material.dart';

import '../widgets/bar_chart.dart';
import '../widgets/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            forceElevated: true,
            floating: true,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                )),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('My Budgets'),
              centerTitle: true,
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(
                Icons.add, 
                size: 30))
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 2,
            (BuildContext context, int index){
              if(index==0){
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0,2),
                    blurRadius: 6
                    )],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: BarChart(),
                );
              }
              else{
                return CategoryWidget();
              }
            }
          ))
        ],
      ),
    );
  }
}
