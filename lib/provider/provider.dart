// provider
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:mobile/provider/provider.dart';
export 'package:mobile/provider/timeline_provider.dart';

import 'package:mobile/function/import.dart';

//一時的
import 'package:mobile/models/models.dart';
import 'dart:math' as math;

final testProvider = StateNotifierProvider<TestdayoNotifier, List<TestUser>>((ref) {
  return TestdayoNotifier();
});

final testProvider2 = StateNotifierProvider<TestdayoNotifier, List<TestUser>>((ref) {
  return TestdayoNotifier();
});

class TestdayoNotifier extends StateNotifier<List<TestUser>> {
  // Todo リストを空のリストとして初期化します。
  TestdayoNotifier() : super([]);

  void addUser() {
    TestUser testtest = TestUser(userId: math.Random().nextInt(10000),
        id: math.Random().nextInt(300),
        title: randomString(20),
        body: randomString(300));
    state = [...state, testtest];
  }

  String randomString(int length) {
    String randomStr = "";

    var random = math.Random();

    for (var i = 0; i < length; i++) {
      int alphaNum = 65 + random.nextInt(26);
      int isLower = random.nextBool() ? 32 : 0;

      randomStr += String.fromCharCode(alphaNum + isLower);
    }

    return randomStr;
  }
}

@immutable
class Todo {
  const Todo(
      {required this.id, required this.description, required this.completed});

  // イミュータブルなクラスのプロパティはすべて `final` にする必要があります。
  final String id;
  final String description;
  final bool completed;

  // Todo はイミュータブルであり、内容を直接変更できないためコピーを作る必要があります。
  // これはオブジェクトの各プロパティの内容をコピーして新たな Todo を返すメソッドです。
  Todo copyWith({String? id, String? description, bool? completed}) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }
}

// StateNotifierProvider に渡すことになる StateNotifier クラスです。
// このクラスではステートを `state` プロパティの外に公開しません。
// つまり、ステートに関しては public なゲッターやプロパティは作らないということです。
// public メソッドを通じて UI 側にステートの操作を許可します。
class TodosNotifier extends StateNotifier<List<Todo>> {
  // Todo リストを空のリストとして初期化します。
  TodosNotifier() : super([]);

  // Todo の追加
  void addTodo(Todo todo) {
    // ステート自体もイミュータブルなため、`state.add(todo)`
    // のような操作はできません。
    // 代わりに、既存 Todo と新規 Todo を含む新しいリストを作成します。
    // Dart のスプレッド演算子を使うと便利ですよ!
    state = [...state, todo];
    // `notifyListeners` などのメソッドを呼ぶ必要はありません。
    // `state =` により必要なときに UI側 に通知が届き、ウィジェットが更新されます。
  }

  // Todo の削除
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
    state = [
      for (final todo in state)
        // ID がマッチした Todo のみ、完了ステータスを変更します。
        if (todo.id == todoId)
          // またまたしつこいですが、ステートはイミュータブルなので
          // Todo クラスに実装した `copyWith` メソッドを使用して
          // Todo オブジェクトのコピーを作る必要があります。
          todo.copyWith(completed: !todo.completed)
        else
          // ID が一致しない Todo は変更しません。
          todo,
    ];
  }
}

// 最後に TodosNotifier のインスタンスを値に持つ StateNotifierProvider を作成し、
// UI 側から Todo リストを操作することを可能にします。
final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});
