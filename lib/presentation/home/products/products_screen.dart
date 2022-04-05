//crear widget sin estado
import 'package:flutter/material.dart';

import '../../theme.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Center(
        child: Text('Products'),
      ),
    );
  }
}
