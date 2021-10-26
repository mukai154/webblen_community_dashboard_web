import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webblen_community_dashboard/constants/app_colors.dart';
import 'package:webblen_community_dashboard/extensions/hover_extensions.dart';
import 'package:webblen_community_dashboard/ui/ui_helpers/ui_helpers.dart';
import 'package:webblen_community_dashboard/ui/widgets/common/progress_indicator/custom_circle_progress_indicator.dart';

import '../custom_text.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double height;
  final double width;
  final double? textSize;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double? elevation;
  final bool isBusy;

  CustomButton({
    required this.text,
    this.textSize,
    required this.height,
    required this.width,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.elevation,
    required this.isBusy,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation == null ? 2.0 : elevation!,
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: isBusy ? null : onPressed,
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(6.0),
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaleFactor: 1.0,
                  ),
                  child: isBusy
                      ? CustomCircleProgressIndicator(size: height / 2, color: textColor)
                      : FittedBox(
                          child: Text(
                            text!,
                            style: TextStyle(
                              color: textColor,
                              fontSize: textSize != null ? textSize : 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Icon? icon;
  final String? text;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final bool? centerContent;

  CustomIconButton({
    this.icon,
    this.text,
    this.height,
    this.width,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.elevation,
    this.centerContent,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation == null ? 2.0 : elevation!,
      color: backgroundColor,
      borderRadius: BorderRadius.circular(14.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.0),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: height,
          width: width,
          child: text != null
              ? Row(
                  mainAxisAlignment: centerContent! ? MainAxisAlignment.center : MainAxisAlignment.start,
                  children: <Widget>[
                    icon!,
                    SizedBox(
                      width: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          textScaleFactor: 1.0,
                        ),
                        child: Text(
                          text!,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: icon,
                ),
        ),
      ),
    );
  }
}

class CustomVerticalIconButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final double height;
  final double width;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color? textColor;

  CustomVerticalIconButton({
    required this.icon,
    required this.text,
    required this.height,
    required this.width,
    required this.onTap,
    required this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: icon,
            ),
            SizedBox(height: 8),
            CustomText(
              text: text,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: appFontColor(),
            ),
          ],
        ),
      ),
    ).showCursorOnHover;
  }
}

class CustomFlatButton extends StatelessWidget {
  final String? text;
  final TextAlign textAlign;
  final Color fontColor;
  final double fontSize;
  final VoidCallback? onTap;
  final bool showBottomBorder;
  CustomFlatButton({
    required this.onTap,
    required this.fontColor,
    required this.fontSize,
    required this.text,
    required this.textAlign,
    required this.showBottomBorder,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: screenWidth(context),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: showBottomBorder ? BorderSide(width: 0.5, color: appBorderColorAlt()) : BorderSide.none,
          ),
        ),
        child: Text(
          text!,
          textAlign: textAlign == null ? TextAlign.left : textAlign,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomSwitchButton extends StatelessWidget {
  final String text;
  final Color fontColor;
  final double fontSize;
  final VoidCallback onTap;
  final bool showBottomBorder;
  final bool isActive;

  CustomSwitchButton({
    required this.onTap,
    required this.fontColor,
    required this.fontSize,
    required this.text,
    required this.isActive,
    required this.showBottomBorder,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: screenWidth(context),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: showBottomBorder ? BorderSide(width: 0.5, color: appBorderColorAlt()) : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              isActive ? 'On' : 'Off',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
