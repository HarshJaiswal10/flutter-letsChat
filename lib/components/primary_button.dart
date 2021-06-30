import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.press,
    @required this.text, 
    
    this.color = kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
  }) : super(key: key);

  final VoidCallback press;
  final String text;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        padding: padding,
        color: color,
        minWidth: double.infinity,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
    );
  }
}
