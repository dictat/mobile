import 'package:mobile/provider/provider.dart';
import 'package:mobile/models/models.dart';

// すべてのつぶやき
final worldTimeLineProvider =
    StateNotifierProvider<TimelineWorldNotifier, List<TimeLine>>((ref) {
  return TimelineWorldNotifier();
});

class TimelineWorldNotifier extends StateNotifier<List<TimeLine>> {
  // Todo リストを空のリストとして初期化します。
  TimelineWorldNotifier() : super([]);

  // プルしたとき
  void addTodo(TimeLine timeLine) {
    state = [...state, timeLine];
  }

  //
  void removeTodo(String todoId) {
    // しつこいですが、ステートはイミュータブルです。
    // そのため既存リストを変更するのではなく、新しくリストを作成する必要があります。
    state = [
      for (final todo in state)
        if (todo.id != todoId) todo,
    ];
  }

  // Todo の完了ステータスの変更
  void toggle(String todoId) {
    state = [];
  }
}