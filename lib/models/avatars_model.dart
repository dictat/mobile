import 'package:mobile/models/models.dart';

class Avatars {
  final int id;
  final int userId;
  final String url;
  final bool isDefault;
  final String create_date;
  final String update_date;
  final String blur;

  Avatars(this.id, this.userId, this.url, this.isDefault, this.create_date,
      this.update_date, this.blur);
}
