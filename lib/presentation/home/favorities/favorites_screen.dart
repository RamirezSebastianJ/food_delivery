//FavoritesScreen stateful
import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/theme.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

//state FavoritesScreen
class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Center(
        child: Text('FavoritesScreen'),
      ),
    );
  }
}
