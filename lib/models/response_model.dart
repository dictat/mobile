
import '../function/import.dart';
part 'response_model.g.dart';
@immutable
class TimeLineResponse {
  final List<TimeLine> results;
  final int total;
  final int totalPages;
  final int currentPage;
  final int pageSize;

  const TimeLineResponse(
      {required this.results,
      required this.total,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  TimeLineResponse copyWith() {
    return const TimeLineResponse(
      results: [],
      total: 0,
      totalPages: 0,
        currentPage:0,
        pageSize:0
    );
  }
}

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


