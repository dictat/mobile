import 'package:mobile/models/models.dart';

part 'category_model.g.dart';

@JsonSerializable()
class Category {
  int id;
  String name;
  String description;
  int sort;
  String create_date;
  String update_date;

  Category(
      {required this.id,
      required this.name,
      required this.description,
      required this.sort,
      required this.create_date,
      required this.update_date});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
