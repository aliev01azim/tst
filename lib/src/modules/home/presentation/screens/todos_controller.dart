import 'package:get/get.dart';

import '../../domain/entities/todo.dart';
import '../../domain/usecases/todos_usecase.dart';

class TodosController extends GetxController {
  final TodosUseCase todosUseCase;
  TodosController({required this.todosUseCase});
  bool lazyLoad = false;
  bool loading = true;
  bool hasMore = true;
  List<TodoModel> todos = [];
  String? error;
  bool todoIsLoading = false;
  int _page = 1;
  bool _fetchingInProcess = false;
  Future<void> fetchTodos({bool refresh = false}) async {
    if ((!hasMore && !refresh) || _fetchingInProcess) return;
    _fetchingInProcess = true;
    final isLazyLoad = _page != 1;
    loading = refresh || _page == 1;
    lazyLoad = isLazyLoad;
    update();

    if (refresh) {
      _page = 1;
      //если хот рефреш - то очищаю кэш
      await todosUseCase.clearCache();
    }
    final result = await todosUseCase.fetchTodos(start: _page);
    result.fold(
      (l) {
        error = l.error;
        loading = false;
        lazyLoad = false;
      },
      (r) {
        final newTodos =
            (!isLazyLoad || refresh) ? r.data : [...todos, ...r.data];
        todos = newTodos;
        error = null;
        hasMore = r.data.isNotEmpty;
        loading = false;
        lazyLoad = false;
        _page += 1;
      },
    );
    update();
    _fetchingInProcess = false;
  }

  Future<void> addTodo({required bool completed, required String title}) async {
    todoIsLoading = true;
    update();
    final result =
        await todosUseCase.addTodo(title: title, completed: completed);
    result.fold(
      (l) {
        todoIsLoading = false;
      },
      (r) {
        todoIsLoading = false;
        todos = [r, ...todos];
      },
    );
    update();
  }

  Future<void> editTodo(
      {required int id, required bool completed, required String title}) async {
    todoIsLoading = true;
    update();
    final currentTodoIndex = todos.indexWhere((element) => element.id == id);
    final editedItem =
        todos[currentTodoIndex].copyWith(completed: completed, title: title);
    final result = await todosUseCase.editTodo(item: editedItem);
    result.fold(
      (l) {
        todoIsLoading = false;
      },
      (r) {
        final newTodos = [...todos];
        newTodos[currentTodoIndex] = editedItem;
        todoIsLoading = false;
        todos = newTodos;
      },
    );
    update();
  }

 
  // @override
  // void onClose() {
  //   _page = 1;
  //   super.onClose();
  // }
}
