
import '../function/import.dart';

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

@immutable
class TestUserResponse {
  final List<TestUser> results;
  final int total;
  final int totalPages;
  final int currentPage;
  final int pageSize;

  TestUserResponse.fromJson(Map<String, dynamic> json)
      : results = [],
        total = json['total'],
        totalPages = json['totalPages'],
        pageSize = json['pageSize'],
        currentPage = json['currentPage'];

  const TestUserResponse(
      {required this.results,
        required this.total,
        required this.totalPages,
        required this.currentPage,
        required this.pageSize});

  TestUserResponse copyWith() {
    return const TestUserResponse(
        results: [],
        total: 0,
        totalPages: 0,
        currentPage:0,
        pageSize:0
    );
  }
}


