// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    final maxBarHeight = 220;
    final minBarHeight = 30;
    int j = 1;
    return Column(
      children: [
        const Text(
          'Weekly Expenses',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
            const Text(
              'Jan 1,2023 - Jan 7, 2023',
              style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 30,
                ))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for(int i = maxBarHeight; i> minBarHeight; i-=30)
            Column(
              children: [
                Text(
                  '₹$i',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: i.toDouble(),
                  width: 18,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6)),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Day ${j++}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
