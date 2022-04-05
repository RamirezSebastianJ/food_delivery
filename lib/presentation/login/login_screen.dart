import 'package:flutter/material.dart';
import 'package:food_delivery/domain/enums/visual_screen_login.dart';
import 'package:food_delivery/presentation/login/sin_up_form.dart';

import '../theme.dart';
import 'login_form.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  VisualScreenLoginEnum visualScreen = VisualScreenLoginEnum.login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodDeliveryColors.grayBase,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              color: FoodDeliveryColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                    offset: Offset(0, 4),
                    blurRadius: 30)
              ],
            ),
            child: Stack(alignment: Alignment.center, children: [
              Image.asset('assets/delivery/images/large_logo.png'),
              Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          visualScreen = VisualScreenLoginEnum.login;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: visualScreen == VisualScreenLoginEnum.login
                            ? const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                color: FoodDeliveryColors.orange,
                                width: 3.0,
                              )))
                            : null,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'SFProRoundedBold',
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          visualScreen = VisualScreenLoginEnum.sing_up;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration:
                            visualScreen == VisualScreenLoginEnum.sing_up
                                ? const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                    color: FoodDeliveryColors.orange,
                                    width: 3.0,
                                  )))
                                : null,
                        child: const Text(
                          'Sign-up',
                          style: TextStyle(
                            fontFamily: 'SFProRoundedBold',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Expanded(
            child: Stack(
              children: [
                visualScreen == VisualScreenLoginEnum.login
                    ? LoginForm()
                    : Container(),
                visualScreen == VisualScreenLoginEnum.sing_up
                    ? SingUpForm()
                    : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
