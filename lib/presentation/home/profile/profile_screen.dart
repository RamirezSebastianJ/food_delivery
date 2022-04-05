import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/theme.dart';

//profilescreen stateful
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

//state profilescreen
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Center(
        child: Text('ProfileScreen'),
      ),
    );
  }
}
