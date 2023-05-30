import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(String dateTimeString) =>
      DateTime.parse('${dateTimeString}Z').toLocal();

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
