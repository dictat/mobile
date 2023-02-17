import 'package:mobile/models/models.dart';

part 'response_timeline_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TimeLineResponse {
  @JsonKey(name: 'results') // @JsonKeyアノテーション：multi_select -> multiSelect
  List<TimeLine> results;
  int total;
  int totalPages;
  int currentPage;
  int pageSize;

  factory TimeLineResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeLineResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TimeLineResponseToJson(this);

  TimeLineResponse(
      {required this.results,
      required this.total,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  TimeLineResponse copyWith() {
    return TimeLineResponse(
        results: [], total: 0, totalPages: 0, currentPage: 0, pageSize: 0);
  }
}

/*
@JsonSerializable(explicitToJson:true)
class TestUserResponse {
  @JsonKey(name: 'results') // @JsonKeyアノテーション：multi_select -> multiSelect
  List<TestUser> results;
   int total;
   int totalPages;
   int currentPage;
   int pageSize;

  factory TestUserResponse.fromJson(Map<String, dynamic> json) => _$TestUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TestUserResponseToJson(this);

  TestUserResponse(
      {required this.results,
        required this.total,
        required this.totalPages,
        required this.currentPage,
        required this.pageSize});

  /*
  TestUserResponse copyWith() {
    return const TestUserResponse(
        results: new TestUser(),
        total: 0,
        totalPages: 0,
        currentPage:0,
        pageSize:0
    );
  }

   */
}



 */
