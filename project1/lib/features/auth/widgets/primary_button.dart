import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.dynamicColor,
      required this.width,
      required this.height,
      required this.textColor});

  final String buttonText;
  final Function() onTap;
  final Color dynamicColor;
  final double width;
  final double height;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: dynamicColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
