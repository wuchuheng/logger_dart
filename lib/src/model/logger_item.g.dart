// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggerItem _$LoggerItemFromJson(Map<String, dynamic> json) => LoggerItem(
      message: json['message'] as String,
      type: $enumDecode(_$LoggerTypeEnumMap, json['type']),
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$LoggerItemToJson(LoggerItem instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': _$LoggerTypeEnumMap[instance.type]!,
      'symbol': instance.symbol,
    };

const _$LoggerTypeEnumMap = {
  LoggerType.info: 'info',
  LoggerType.error: 'error',
};
