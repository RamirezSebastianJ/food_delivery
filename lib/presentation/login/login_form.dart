import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/home/home_screen.dart';

import '../theme.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .1,
            vertical: MediaQuery.of(context).size.width * .08),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * .02),
              child: const TextField(
                  decoration: InputDecoration(labelText: 'Email address')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * .02),
              child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: FoodDeliveryColors.orangeGradient,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .1,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'ForgotPassword',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: FoodDeliveryColors.orange,
                      fontFamily: 'SFProRoundedBold',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .48,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(FoodDeliveryColors.orange),
                      overlayColor: MaterialStateProperty.all(
                          FoodDeliveryColors.white.withOpacity(0.2)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  child: const Text('Login')),
            )
          ],
        ),
      ),
    );
  }
}
