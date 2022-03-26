import 'package:flutter/material.dart';

import '../theme.dart';

class SingUpForm extends StatefulWidget {
  SingUpForm({Key? key}) : super(key: key);

  @override
  State<SingUpForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SingUpForm> {
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
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * .02),
              child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: FoodDeliveryColors.orangeGradient,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .62,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          FoodDeliveryColors.orange),
                      overlayColor: MaterialStateProperty.all(
                          FoodDeliveryColors.white.withOpacity(0.2)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  onPressed: () {},
                  child: const Text('Login')),
            )
          ],
        ),
      ),
    );
  }}
