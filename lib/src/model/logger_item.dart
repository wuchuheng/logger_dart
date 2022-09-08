import 'package:json_annotation/json_annotation.dart';

import 'logger_type.dart';

part 'logger_item.g.dart';

@JsonSerializable()
class LoggerItem {
  final String message;
  final LoggerType type;
  final String? symbol;

  LoggerItem({required this.message, required this.type, this.symbol});

  factory LoggerItem.fromJson(Map<String, dynamic> json) => _$LoggerItemFromJson(json);

  Map<String, dynamic> toJson() => _$LoggerItemToJson(this);
}
