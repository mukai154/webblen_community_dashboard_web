import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:webblen_community_dashboard/app/app.locator.dart';
import 'package:webblen_community_dashboard/ui/views/base/webblen_base_view_model.dart';

class BaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget getViewForIndex(int index, BaseViewModel model) {
    //   switch (index) {
    //     case 0:
    //       return model.isBusy
    //           ? Center(
    //         child: CustomCircleProgressIndicator(
    //           color: appActiveColor(),
    //           size: 32,
    //         ),
    //       )
    //           : HomeView();
    //     case 1:
    //       return SearchView();
    //     case 2:
    //       return WalletView();
    //     case 3:
    //       return ProfileView();
    //     default:
    //       return model.isBusy
    //           ? Container(
    //         color: appBackgroundColor,
    //       )
    //           : HomeView();
    //   }
    // }

    return ViewModelBuilder<WebblenBaseViewModel>.reactive(
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
      initialiseSpecialViewModelsOnce: true,
      onModelReady: (model) => model.initialize(),
      viewModelBuilder: () => locator<WebblenBaseViewModel>(),
      builder: (context, model, child) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(),
          // child: CustomTopNavBar(
          //   navBarItems: [
          //     CustomTopNavBarItem(
          //       onTap: () => model.setNavBarIndex(0),
          //       iconData: FontAwesomeIcons.home,
          //       isActive: model.navBarIndex == 0 ? true : false,
          //     ),
          //     CustomTopNavBarItem(
          //       onTap: () => model.setNavBarIndex(1),
          //       iconData: FontAwesomeIcons.search,
          //       isActive: model.navBarIndex == 1 ? true : false,
          //     ),
          //     CustomTopNavBarItem(
          //       onTap: () => model.setNavBarIndex(2),
          //       iconData: FontAwesomeIcons.wallet,
          //       isActive: model.navBarIndex == 2 ? true : false,
          //     ),
          //     CustomTopNavBarItem(
          //       onTap: () => model.setNavBarIndex(3),
          //       iconData: FontAwesomeIcons.user,
          //       isActive: model.navBarIndex == 3 ? true : false,
          //     ),
          //   ],
          // ),
        ),
        body: Container(),
        // model.isBusy
        //     ? Container(
        //         color: appBackgroundColor,
        //         child: Center(
        //           child: CustomCircleProgressIndicator(
        //             color: appActiveColor(),
        //             size: 32,
        //           ),
        //         ),
        //       )
        //     : model.initErrorStatus == InitErrorStatus.network
        //         ? NetworkErrorView(
        //             tryAgainAction: () => model.initialize(),
        //           )
        //         : model.initErrorStatus == InitErrorStatus.location
        //             ? LocationErrorView(
        //                 tryAgainAction: () => model.initialize(),
        //               )
        //             : getViewForIndex(model.navBarIndex, model),
        floatingActionButton: Container(
          width: 100,
          child: Container(),
          // model.isBusy
          //   ? Container()
          //   : Row(
          //       mainAxisAlignment: model.isLoggedIn ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
          //       children: [
          //         FloatingActionButton(
          //           heroTag: "showFilter",
          //           onPressed: () => model.customBottomSheetService.openFilter(),
          //           backgroundColor: appActiveColor(),
          //           foregroundColor: Colors.white,
          //           mini: true,
          //           child: Icon(
          //             FontAwesomeIcons.slidersH,
          //             color: Colors.white,
          //             size: 16,
          //           ),
          //         ),
          //         model.isLoggedIn
          //             ? FloatingActionButton(
          //                 heroTag: "addContent",
          //                 onPressed: () => model.customBottomSheetService.showAddContentOptions(),
          //                 backgroundColor: appActiveColor(),
          //                 foregroundColor: Colors.white,
          //                 mini: true,
          //                 child: Icon(
          //                   FontAwesomeIcons.plus,
          //                   color: Colors.white,
          //                   size: 16,
          //                 ),
          //               )
          //             : Container(height: 0, width: 0),
          //       ],
          //     ),
        ),
      ),
    );
  }
}
