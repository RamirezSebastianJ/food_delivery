import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/theme.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: ListTileTheme(
                textColor: Colors.white,
                iconColor: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.account_circle_rounded),
                      title: const Text(
                        'Profile',
                        style: textStyleNavDrawer,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.shopping_cart_rounded),
                      title: const Text(
                        'Order',
                        style: textStyleNavDrawer,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.local_offer),
                      title: const Text(
                        'Offer',
                        style: textStyleNavDrawer,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.sticky_note_2_outlined),
                      title: const Text(
                        'Privacy policy',
                        style: textStyleNavDrawer,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.security),
                      title: const Text(
                        'Security',
                        style: textStyleNavDrawer,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Row(
                        children: const [
                          Text(
                            'Sign-out',
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
