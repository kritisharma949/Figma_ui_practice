import 'package:flutter/material.dart';
import 'package:project1/features/auth/widgets/primary_button.dart';
import 'package:project1/features/auth/widgets/secondary_button.dart';
import 'package:project1/main.dart';

import '../widgets/app_logo.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 276.88,
                  height: 244.97,
                  color: Colors.white,
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: AppLogo(
                        width: 158,
                        height: 133,
                        Radius: 100,
                        iconsize: 100,
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 252,
                      child: Center(
                        child: Text(
                          "Let's make your startup a unicorn",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 50,
                ),
                PrimaryButton(
                    buttonText: 'Enter your email',
                    onTap: () {},
                    dynamicColor: Color.fromARGB(231, 231, 231, 255),
                    width: 337,
                    height: 64,
                    textColor: Colors.black),
                SizedBox(
                  height: 50,
                ),
                PrimaryButton(
                  buttonText: 'Enter your password',
                  onTap: () {},
                  dynamicColor: Color.fromARGB(231, 231, 231, 255),
                  width: 337,
                  height: 64,
                  textColor: Colors.black,
                ),
                SizedBox(
                  height: 50,
                ),
                PrimaryButton(
                  buttonText: "Let's go",
                  onTap: () {},
                  dynamicColor: Colors.black,
                  width: 267,
                  height: 64,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 50,
                ),
                SecondaryButton(
                  buttonText: "New User?",
                  onTap: () {},
                )
              ],
            )),
      ),
    );
  }
}
