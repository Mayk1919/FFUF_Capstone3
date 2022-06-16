import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  factory AppState({
    @Default(true) bool isDisplayingMyBusinessCard,
    @Default(kLoggedInUserId) int employeeNumber,
    @Default(1) int selectedMenu,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
