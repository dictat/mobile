import 'package:mobile/models/models.dart';

part 'response_user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserResponse {
  @JsonKey(name: 'results') // @JsonKeyアノテーション：multi_select -> multiSelect
  List<User> results;
  int total;
  int totalPages;
  int currentPage;
  int pageSize;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

  UserResponse(
      {required this.results,
      required this.total,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});
}
