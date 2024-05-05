// Flutter imports:
import 'package:get/get.dart';

import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../infrastructure/statics/consts.dart';
import '../../../auth/presentation/screens/login/login_controller.dart';
import '../../../auth/presentation/screens/login/login_screen.dart';
import 'add_edit_screen.dart';
import 'todos_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  final _todosController = Get.find<TodosController>();
  final _loginController = Get.find<LoginController>();
  final ScrollController _scrollController = ScrollController();

  bool _hasMore = true;
  bool _isEndReached = false;
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
    _fetchPosts();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      _isEndReached = true;
      _fetchPosts();
    }
  }

  void _fetchPosts({bool isRefresh = false}) {
    if (_hasMore) {
      _todosController.fetchTodos(refresh: isRefresh);
    }
  }

  Future<void> _refresh() async {
    _isEndReached = false;
    _hasMore = true;
    _todosController.fetchTodos(refresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home module'),
        leading: IconButton(
          onPressed: () => Get.to(() => const TodoEditAddScreen()),
          icon: const Icon(Icons.add),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _loginController.logOut();
                // BlocProvider.of<TodosBloc>(context)
                //     .add(const TodosEvent.reset());
                Get.offAllNamed(
                  GetPages.auth,
                  predicate: (route) => route is LoginScreen,
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: RefreshIndicator(
        displacement: 100,
        onRefresh: _refresh,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildTodosList(),
            _buildLoadingIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildTodosList() {
    return GetBuilder<TodosController>(
      builder: (state) {
        _hasMore = state.hasMore;
        return state.loading
            ? const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : SliverList.separated(
                itemBuilder: (context, index) {
                  final item = state.todos[index];
                  return ListTile(
                    onTap: () => Get.to(
                      () => TodoEditAddScreen(
                        item: item,
                      ),
                    ),
                    selected: item.completed,
                    selectedTileColor: AppColors.greyDark,
                    tileColor: AppColors.focusedField.withOpacity(0.1),
                    title: Text('${item.id}. ${item.title}'),
                    trailing:
                        item.completed ? const Icon(Icons.done_outlined) : null,
                  );
                },
                itemCount: state.todos.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              );
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return GetBuilder<TodosController>(
      builder: (c) {
        return SliverToBoxAdapter(
          child: c.lazyLoad && _isEndReached
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
  
}
