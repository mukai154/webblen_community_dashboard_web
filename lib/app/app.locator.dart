// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../services/auth/auth_service.dart';
import '../services/dialogs/custom_dialog_service.dart';
import '../services/firestore/data/platform_data_service.dart';
import '../services/firestore/data/user_data_service.dart';
import '../services/reactive/webblen_user/reactive_webblen_user_service.dart';
import '../ui/views/base/webblen_base_view_model.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ThemeService.getInstance());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => CustomDialogService());
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => PlatformDataService());
  locator.registerLazySingleton(() => UserDataService());
  locator.registerLazySingleton(() => ReactiveWebblenUserService());
  locator.registerSingleton(WebblenBaseViewModel());
}
