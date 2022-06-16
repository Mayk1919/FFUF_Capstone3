import 'package:async_redux/async_redux.dart';
import 'package:capstone3/state/app_state.dart';

class ChangeMyBusinessCardDisplayAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    return state.copyWith(
        isDisplayingMyBusinessCard: !state.isDisplayingMyBusinessCard);
  }
}

class ChangeSelectedMenuDisplayAction extends ReduxAction<AppState> {
  final int position;
  ChangeSelectedMenuDisplayAction({required this.position});
  @override
  AppState reduce() {
    return state.copyWith(selectedMenu: position);
  }
}
