
class TestUser {
  final int userId;
  final int id;
  final String title;
  final String body;

  TestUser(this.userId, this.id, this.title, this.body);

  TestUser.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
       title = json['title'],
       body = json['body'],
        id = json['id'];
}