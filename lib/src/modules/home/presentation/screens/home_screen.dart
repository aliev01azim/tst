// Flutter imports:
import '../../../auth/presentation/screens/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../infrastructure/statics/consts.dart';
import '../../../../../di.dart';
import '../../../../infrastructure/routes/routes.dart';
import 'todos_bloc/todos_bloc.dart';

@RoutePage()
class HomeModuleScreen extends StatelessWidget {
  const HomeModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => TodosBloc(todosUseCase: di.postsUseCase),
      ),
    ], child: const AutoRouter());
  }
}

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
      BlocProvider.of<TodosBloc>(context)
          .add(TodosEvent.fetchTodos(refresh: isRefresh));
    }
  }

  Future<void> _refresh() async {
    _isEndReached = false;
    _hasMore = true;
    _fetchPosts(isRefresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home module'),
        leading: IconButton(
          onPressed: () => context.pushRoute(TodoEditAddRoute()),
          icon: const Icon(Icons.add),
        ),
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<LoginBloc>(context)
                    .add(const LoginEvent.logOut());
                BlocProvider.of<TodosBloc>(context).add(const TodosEvent.reset());
                context.router.pushAndPopUntil(
                  const LoginRoute(),
                  predicate: (route) => route is LoginRoute,
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
    return BlocConsumer<TodosBloc, TodosState>(
      listener: (context, state) {
        _hasMore = state.hasMore;
      },
      builder: (context, state) {
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
                    onTap: () =>
                        context.pushRoute(TodoEditAddRoute(item: item)),
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
      listenWhen: (previous, current) =>
          previous.todos.length != current.todos.length ||
          previous.hasMore != current.hasMore,
    );
  }

  Widget _buildLoadingIndicator() {
    return BlocSelector<TodosBloc, TodosState, bool>(
      selector: (state) {
        return state.lazyLoad;
      },
      builder: (context, lazyloading) {
        return SliverToBoxAdapter(
          child: lazyloading && _isEndReached
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
