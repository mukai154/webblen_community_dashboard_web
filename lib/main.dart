import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:webblen_community_dashboard/services/auth/auth_service.dart';
import 'package:webblen_community_dashboard/services/firestore/data/user_data_service.dart';
import 'package:webblen_community_dashboard/services/reactive/webblen_user/reactive_webblen_user_service.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'app/theme_config.dart';
import 'models/webblen_user.dart';

void main() async {
  // Register all the models and services before the app starts
  await ThemeManager.initialise();
  await Firebase.initializeApp();

  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  // setupDialogUi();
  // setupBottomSheetUI();
  setupSnackBarUi();
  setPathUrlStrategy();

  await Future.delayed(Duration(seconds: 1));
  await setupAuthListener();

  runApp(WebblenCommunityDashboardApp());
}

void setupSnackBarUi() {
  final service = locator<SnackbarService>();
  service.registerSnackbarConfig(
    SnackbarConfig(
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      mainButtonTextColor: Colors.black,
    ),
  );
}

Future<void> setupAuthListener() async {
  ReactiveWebblenUserService _reactiveWebblenUserService = locator<ReactiveWebblenUserService>();
  UserDataService _userDataService = locator<UserDataService>();
  AuthService _authService = locator<AuthService>();
  FirebaseAuth.instance.authStateChanges().listen((event) async {
    if (event != null) {
      //print('main dart says logged in');
      _reactiveWebblenUserService.updateUserLoggedIn(!event.isAnonymous);
      if (_reactiveWebblenUserService.userLoggedIn) {
        WebblenUser user = await _userDataService.getWebblenUserByID(event.uid);
        _reactiveWebblenUserService.updateWebblenUser(user);
      }
    } else {
      //print('main dart says not logged in');
      await _authService.signInAnonymously();
    }
  });
}

class WebblenCommunityDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      lightTheme: regularTheme,
      darkTheme: darkTheme,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Webblen',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        initialRoute: Routes.BaseViewRoute,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
