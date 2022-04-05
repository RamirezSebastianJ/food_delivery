import 'package:flutter/material.dart';

import '../theme.dart';

class DeliveryNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;
  const DeliveryNavigationBar(
      {Key? key, required this.index, required this.onIndexSelected})
      : super(key: key);
  final offset = const Offset(0, 0);
  final colorDecoration = const Color.fromRGBO(214, 55, 0, 0.2000009059604645);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: index == 0 ? colorDecoration : Colors.transparent,
                  offset: offset,
                  blurRadius: 20)
            ],
          ),
          child: IconButton(
            color: index == 0
                ? FoodDeliveryColors.orange
                : FoodDeliveryColors.grayIcon,
            iconSize: index == 0 ? 31 : 24,
            onPressed: () => onIndexSelected(0),
            icon: Icon(index == 0 ? Icons.home : Icons.home_outlined),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: index == 1 ? colorDecoration : Colors.transparent,
                  offset: offset,
                  blurRadius: 20)
            ],
          ),
          child: IconButton(
            color: index == 1
                ? FoodDeliveryColors.orange
                : FoodDeliveryColors.grayIcon,
            iconSize: index == 1 ? 31 : 24,
            onPressed: () => onIndexSelected(1),
            icon: Icon(index == 1 ? Icons.favorite : Icons.favorite_border),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: index == 2 ? colorDecoration : Colors.transparent,
                  offset: offset,
                  blurRadius: 20)
            ],
          ),
          child: IconButton(
            color: index == 2
                ? FoodDeliveryColors.orange
                : FoodDeliveryColors.grayIcon,
            iconSize: index == 2 ? 31 : 24,
            onPressed: () => onIndexSelected(2),
            icon: Icon(index == 2 ? Icons.person : Icons.person_outline),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: index == 3 ? colorDecoration : Colors.transparent,
                  offset: offset,
                  blurRadius: 20)
            ],
          ),
          child: IconButton(
            color: index == 3
                ? FoodDeliveryColors.orange
                : FoodDeliveryColors.grayIcon,
            iconSize: index == 3 ? 31 : 24,
            onPressed: () => onIndexSelected(3),
            icon: const Icon(Icons.history),
          ),
        ),
      ]),
    );
  }
}
