// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      isDisplayingMyBusinessCard:
          json['isDisplayingMyBusinessCard'] as bool? ?? true,
      employeeNumber: json['employeeNumber'] as int? ?? 1,
      selectedMenu: json['selectedMenu'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'isDisplayingMyBusinessCard': instance.isDisplayingMyBusinessCard,
      'employeeNumber': instance.employeeNumber,
      'selectedMenu': instance.selectedMenu,
    };
