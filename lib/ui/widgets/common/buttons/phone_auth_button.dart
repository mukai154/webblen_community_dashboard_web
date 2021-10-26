import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneAuthButton extends StatelessWidget {
  final VoidCallback? action;
  PhoneAuthButton({this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Material(
        elevation: 2.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.0),
          onTap: action,
          child: Container(
            height: 45.0,
            width: 45.0,
            padding: EdgeInsets.only(bottom: 2),
            child: Center(
              child: Icon(FontAwesomeIcons.mobileAlt, color: Colors.black, size: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}
