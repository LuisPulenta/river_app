import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
import 'package:river_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

//------------------ StateNotifierProvider ---------------------
final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

//------------------ Notifier ---------------------
class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier()
      : super([
          Todo(
              id: uuid.v4(),
              description: RandomGenerator.getRandomName(),
              completedAt: DateTime.now()),
          Todo(
              id: uuid.v4(),
              description: RandomGenerator.getRandomName(),
              completedAt: null),
          Todo(
              id: uuid.v4(),
              description: RandomGenerator.getRandomName(),
              completedAt: DateTime.now()),
          Todo(
              id: uuid.v4(),
              description: RandomGenerator.getRandomName(),
              completedAt: null),
          Todo(
              id: uuid.v4(),
              description: RandomGenerator.getRandomName(),
              completedAt: null),
        ]);

  void addTodo() {
    final newTodo = Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null);

    state = [...state, newTodo];
  }

  void toogleTodo(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;
      if (todo.done) return todo.copyWith(completedAt: null);
      return todo.copyWith(completedAt: DateTime.now());
    }).toList();
  }
}

//------------------ State ---------------------
