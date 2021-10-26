import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:webblen_community_dashboard/services/auth/auth_service.dart';
import 'package:webblen_community_dashboard/services/dialogs/custom_dialog_service.dart';
import 'package:webblen_community_dashboard/services/firestore/data/platform_data_service.dart';
import 'package:webblen_community_dashboard/services/firestore/data/user_data_service.dart';
import 'package:webblen_community_dashboard/services/reactive/webblen_user/reactive_webblen_user_service.dart';
import 'package:webblen_community_dashboard/ui/views/auth/auth_view.dart';
import 'package:webblen_community_dashboard/ui/views/base/webblen_base_view_model.dart';

@StackedApp(
  routes: [
    //AUTHENTICATION
    CustomRoute(
      page: AuthView,
      initial: true,
      name: "BaseViewRoute",
      // name: "AuthViewRoute",
      // path: "/login",
      //transitionsBuilder: ,
      durationInMilliseconds: 0,
    ),

    //HOME
    // CustomRoute(
    //   page: BaseView,
    //   initial: true,
    //   name: "BaseViewRoute",
    //   //transitionsBuilder: TransitionsBuilders.fadeIn,
    //   durationInMilliseconds: 0,
    // ),
  ],
  dependencies: [
    //LAZY SINGLETONS
    LazySingleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    // LazySingleton(classType: CustomNavigationService),
    // LazySingleton(classType: CustomBottomSheetService),
    LazySingleton(classType: CustomDialogService),
    LazySingleton(classType: AuthService),
    // LazySingleton(classType: FirestoreStorageService),
    LazySingleton(classType: PlatformDataService),
    // LazySingleton(classType: NotificationDataService),
    //LazySingleton(classType: ForYouPostDataService),
    LazySingleton(classType: UserDataService),
    // LazySingleton(classType: PostDataService),
    // LazySingleton(classType: EventDataService),
    // LazySingleton(classType: LiveStreamDataService),
    //LazySingleton(classType: LiveStreamChatDataService),
    //LazySingleton(classType: ContentGiftPoolDataService),
    //LazySingleton(classType: RedeemedRewardDataService),
    // LazySingleton(classType: TicketDistroDataService),
    // LazySingleton(classType: CommentDataService),
    // LazySingleton(classType: EmailService),
    // LazySingleton(classType: StripePaymentService),
    // LazySingleton(classType: StripeConnectAccountService),
    // LazySingleton(classType: LocationService),
    // LazySingleton(classType: GooglePlacesService),
    // LazySingleton(classType: AlgoliaSearchService),
    // LazySingleton(classType: DynamicLinkService),
    // LazySingleton(classType: ShareService),
    // LazySingleton(classType: ActivityDataService),
    // LazySingleton(classType: UserPreferenceDataService),
    // LazySingleton(classType: CSVReaderService),

    //REACTIVE LAZY SINGLETONS
    LazySingleton(classType: ReactiveWebblenUserService),
    // LazySingleton(classType: ReactiveContentFilterService),
    // LazySingleton(classType: ReactiveFileUploaderService),

    //SINGLETONS
    Singleton(classType: WebblenBaseViewModel),
    // Singleton(classType: HomeViewModel),
    // Singleton(classType: RecentSearchViewModel),
    // Singleton(classType: WalletViewModel),
  ],
)
class AppSetup {
  /// no purpose outside of annotation
}
