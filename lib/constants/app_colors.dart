import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:webblen_community_dashboard/app/app.locator.dart';

import 'custom_colors.dart';

ThemeService? _themeService = locator<ThemeService>();

bool isDarkMode() {
  return _themeService!.isDarkMode;
}

Color appBackgroundColor = _themeService!.isDarkMode ? CustomColors.webblenDarkGray : Colors.white;

Color appButtonColor() {
  return _themeService!.isDarkMode ? CustomColors.webblenDarkGray : Colors.white;
}

Color appButtonColorAlt() {
  return _themeService!.isDarkMode ? CustomColors.steelGray : CustomColors.iosOffWhite;
}

Color appTagBackgroundColor() {
  return _themeService!.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appIconColor() {
  return _themeService!.isDarkMode ? Colors.white : Colors.black;
}

Color appIconColorAlt() {
  return _themeService!.isDarkMode ? Colors.white38 : Colors.black45;
}

Color appFontColor() {
  return _themeService!.isDarkMode ? CustomColors.iosOffWhite : Colors.black;
}

Color appFontColorAlt() {
  return _themeService!.isDarkMode ? Colors.white38 : Colors.black38;
}

Color appDividerColor() {
  return _themeService!.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appBorderColor() {
  return _themeService!.isDarkMode ? Colors.white24 : Colors.black26;
}

Color appBorderColorAlt() {
  return _themeService!.isDarkMode ? Colors.white12 : Colors.black12;
}

Color iconButtonBackgroundColor() {
  return _themeService!.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appConfirmationColor() {
  return CustomColors.darkMountainGreen;
}

Color appDestructiveColor() {
  return Colors.redAccent;
}

Color appActiveColor() {
  return CustomColors.webblenRed;
}

Color appInActiveColor() {
  return _themeService!.isDarkMode ? Colors.white : Colors.black;
}

Color appInActiveColorAlt() {
  return _themeService!.isDarkMode ? Colors.white38 : Colors.black38;
}

Color appShadowColor() {
  return _themeService!.isDarkMode ? Colors.white12 : Colors.black12;
}

Color appTextFieldContainerColor() {
  return _themeService!.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appCursorColor() {
  return _themeService!.isDarkMode ? Colors.white : Colors.black;
}

Color appImageButtonColor() {
  return _themeService!.isDarkMode ? Colors.white12 : CustomColors.iosOffWhite;
}

Color appTextButtonColor() {
  return Colors.blue;
}

Color appSavedContentColor() {
  return CustomColors.carminPink;
}

Color appShimmerBaseColor() {
  return _themeService!.isDarkMode ? CustomColors.webblenMidGray : CustomColors.iosOffWhite;
}

Color appShimmerHighlightColor() {
  return _themeService!.isDarkMode ? Colors.white : Colors.white;
}

Brightness appBrightness() {
  return _themeService!.isDarkMode ? Brightness.dark : Brightness.light;
}
