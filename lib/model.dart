import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Option {
  Option({
    required this.id,
    required this.name,
    required this.color,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  String id;
  String name;
  String color;

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}