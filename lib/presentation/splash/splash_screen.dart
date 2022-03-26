import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color colorText = FoodDeliveryColors.red;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodDeliveryColors.orange,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 70.0,
                horizontal: 40,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: FoodDeliveryColors.white,
                    radius: 36,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Image.asset('assets/delivery/images/small_logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: DefaultTextStyle(
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'SFProRoundedBold',
                      fontSize: 65,
                      fontWeight: FontWeight.w900,
                      height: 0.9),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Food for Everyone',
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child:
                        Image.asset('assets/delivery/images/toys_splash.png'),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * .7,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          FoodDeliveryColors.orangeGradient,
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: true, //change this condition when login is implemented,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: SizedBox(
                        width: double.infinity, // <-- match_parent

                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  FoodDeliveryColors.white),
                              overlayColor: MaterialStateProperty.all(
                                  FoodDeliveryColors.orangeGradient
                                      .withOpacity(0.1)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ))),
                          onPressed: () {},
                          child: const Text('Get started',
                              style: TextStyle(
                                color: FoodDeliveryColors.red,
                                fontFamily: 'SFProRoundedRegular',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
