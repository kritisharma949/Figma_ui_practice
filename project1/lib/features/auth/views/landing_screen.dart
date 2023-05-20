import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project1/features/auth/widgets/primary_button.dart';
import 'package:project1/features/auth/widgets/secondary_button.dart';

import '../widgets/app_logo.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

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
                    height: 406,
                    width: 428,
                    color: const Color(0xFF1580E2),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 118,
                        ),
                        Container(
                          width: 222,
                          height: 96,
                          child: Center(
                            child: Text(
                              'Be a part of Change',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          child: AppLogo(
                            width: 133.18,
                            height: 134.46,
                            Radius: 40,
                            iconsize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: PrimaryButton(
                      buttonText: 'Login as Investor',
                      onTap: () {},
                      dynamicColor: Colors.black,
                      width: 267,
                      height: 64,
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: PrimaryButton(
                      buttonText: 'Login as Startup',
                      onTap: () {},
                      dynamicColor: Colors.black,
                      width: 267,
                      height: 64,
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      child: SecondaryButton(
                    buttonText: ('Create account '),
                    onTap: () {},
                  ))
                ]),
          ),
        ));
  }
}
