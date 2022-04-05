import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/theme.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Center(
        child: Text('HistoryScreen'),
      ),
    );
  }
}
