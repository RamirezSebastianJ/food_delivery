import 'package:flutter/material.dart';

import '../theme.dart';
import 'delivery_navigator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                Text(
                  'currentIndex1: $currentIndex',
                  style: TextStyle(color: Colors.black),
                ),
                Text('currentIndex2: $currentIndex'),
                Text('currentIndex3: $currentIndex'),
                Text('currentIndex4: $currentIndex'),
              ],
            ),
          ),
          DeliveryNavigationBar(
              index: currentIndex,
              onIndexSelected: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ],
      ),
    );
  }
}
