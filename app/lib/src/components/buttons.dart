import 'package:flutter/material.dart';

class MyPrimaryButton extends StatelessWidget {
  MyPrimaryButton({this.title, this.buttonColor = Colors.red});

  final String title;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
        ),
      ),
    );
  }
}

class MySecondaryButton extends StatelessWidget {
  MySecondaryButton({this.title, this.buttonColor, this.buttonTextColor});

  final String title;
  final Color buttonColor;
  final Color buttonTextColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: buttonTextColor),
        ),
      ),
    );
  }
}
