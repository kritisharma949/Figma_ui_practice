import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key, required this.buttonText, required this.onTap});

  final String buttonText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 267,
        height: 64,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Color(0xff369196),
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
