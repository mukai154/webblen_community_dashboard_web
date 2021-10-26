import 'package:flutter/services.dart';
//import 'package:webblen_community_dashboard/app.locator.dart';

copyShareableLink({String? link}) async {
  //DialogService dialogService = locator<DialogService>();
  Clipboard.setData(ClipboardData(text: link));
  HapticFeedback.lightImpact();
  // dialogService.showDialog(
  //   title: "Link Copied!",
  //   description: "Share it anywhere you'd like",
  //   barrierDismissible: true,
  //   buttonTitle: "Ok",
  // );
}
