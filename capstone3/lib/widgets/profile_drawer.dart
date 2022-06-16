import 'package:async_redux/async_redux.dart';
import 'package:capstone3/state/actions/actions.dart';
import 'package:capstone3/state/app_state.dart';
import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDrawerViewModel extends Vm {
  final int selectedMenu;
  final Function onChangeSelectedMenuDisplayAction;
  ProfileDrawerViewModel({
    required this.selectedMenu,
    required this.onChangeSelectedMenuDisplayAction,
  }) : super(equals: [selectedMenu]);
}

class ProfileDrawerViewModelFactory
    extends VmFactory<AppState, ProfileDrawerConnector> {
  ProfileDrawerViewModelFactory(ProfileDrawerConnector widget) : super(widget);

  @override
  Vm fromStore() {
    return ProfileDrawerViewModel(
      selectedMenu: state.selectedMenu,
      onChangeSelectedMenuDisplayAction: (int position) =>
          dispatch(ChangeSelectedMenuDisplayAction(position: position)),
    );
  }
}

class ProfileDrawerConnector extends StatelessWidget {
  const ProfileDrawerConnector({Key? key}) : super(key: key);
  static const String businessCardPage = '/businessCardPage';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProfileDrawerViewModel>(
        vm: () => ProfileDrawerViewModelFactory(this),
        builder: (context, vm) {
          return ProfileDrawer(
              selectedPosition: vm.selectedMenu,
              onChangeSelectedMenuDisplayAction:
                  vm.onChangeSelectedMenuDisplayAction);
        });
  }
}

class ProfileDrawer extends StatelessWidget {
  final int selectedPosition;
  final Function onChangeSelectedMenuDisplayAction;
  const ProfileDrawer({
    Key? key, 
    required this.selectedPosition, 
    required this.onChangeSelectedMenuDisplayAction
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: kDrawerPadding,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: kDrawerHeaderHeight,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (() => Navigator.pop(context)),
                        child: SvgPicture.asset(kCLoseIcon),
                      ),
                      SvgPicture.asset(kCompanyLogoIcon),
                    ]),
              ),
            ),
            SizedBox(
              height: kDrawerIconWidgetToDrawerIconWidgetDistance,
            ),
            DrawerIcon(
              label: kMyAccount,
              iconUrl: kMyProfileIcon,
              navigatorName: 'profilePage',
              position: 1,
              selectedPosition:selectedPosition,
              onChangeSelectedMenuDisplayAction:onChangeSelectedMenuDisplayAction,
            ),
            SizedBox(
              height: kDrawerIconWidgetToDrawerIconWidgetDistance,
            ),
            DrawerIcon(
              label: kBusinessCard,
              iconUrl: kBusinessCardGreyIcon,
              navigatorName: 'businessCardPage',
              position: 2,
              selectedPosition:selectedPosition,
              onChangeSelectedMenuDisplayAction:onChangeSelectedMenuDisplayAction,

            ),
            SizedBox(
              height: kDrawerIconWidgetToDrawerIconWidgetDistance,
            ),
            DrawerIcon(
              label: kTimeTracking,
              iconUrl: kTimeBlackIcon,
              navigatorName: 'timeTrackingPage',
              position: 3,
              selectedPosition:selectedPosition,
              onChangeSelectedMenuDisplayAction:onChangeSelectedMenuDisplayAction,
            ),
            SizedBox(
              height: kDrawerIconWidgetToDrawerIconWidgetDistance,
            ),
            DrawerIcon(
              label: kMyOperations,
              iconUrl: kMyOperationsGreyIcon,
              navigatorName: 'profilePage',
              position: 4,
              selectedPosition:selectedPosition,
              onChangeSelectedMenuDisplayAction:onChangeSelectedMenuDisplayAction,
            ),
          ],
        ),
      ),
    );
  }
}
