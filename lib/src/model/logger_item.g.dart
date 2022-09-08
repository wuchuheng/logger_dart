// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggerItem _$LoggerItemFromJson(Map<String, dynamic> json) => LoggerItem(
      dateTime: DateTime.parse(json['dateTime'] as String),
      file: json['file'] as String,
      message: json['message'] as String,
      type: $enumDecode(_$LoggerTypeEnumMap, json['type']),
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$LoggerItemToJson(LoggerItem instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': _$LoggerTypeEnumMap[instance.type]!,
      'symbol': instance.symbol,
      'dateTime': instance.dateTime.toIso8601String(),
      'file': instance.file,
    };

const _$LoggerTypeEnumMap = {
  LoggerType.info: 'info',
  LoggerType.error: 'error',
};
