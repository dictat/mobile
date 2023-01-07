class UserResponse {
  final int id;
  final String name;
  final String description;
  final String avatarUrl;
  final String coverUrl;

  UserResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.avatarUrl,
    required this.coverUrl,
  });

  static List<UserResponse> users = [
    UserResponse(
        id: 1,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 2,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 3,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 4,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 5,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 6,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 7,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 8,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
    UserResponse(
        id: 9,
        name: "test",
        description: "desc",
        avatarUrl: "fff",
        coverUrl: "cover"),
  ];
}
