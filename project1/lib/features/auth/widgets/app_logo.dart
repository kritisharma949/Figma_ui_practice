import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo(
      {super.key,
      required this.width,
      required this.height,
      required this.Radius,
      required this.iconsize});
  final double width;
  final double height;
  final double Radius;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: Center(
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: Radius,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.stacked_line_chart_rounded,
                  size: iconsize,
                ),
              ),
            ],
          ),
        ));
  }
}
