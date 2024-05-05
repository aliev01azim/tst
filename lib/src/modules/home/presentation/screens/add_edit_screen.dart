import '../../domain/entities/todo.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../common/widgets/mini_btn.dart';
import '../../../../infrastructure/statics/consts.dart';
import '../../../../infrastructure/statics/styles.dart';
import '../../../../common/widgets/text_field.dart';
import 'todos_bloc/todos_bloc.dart';

@RoutePage()
class TodoEditAddScreen extends StatefulWidget {
  const TodoEditAddScreen({super.key, this.item});
  final TodoModel? item;
  @override
  State<TodoEditAddScreen> createState() => _TodoEditAddScreenState();
}

class _TodoEditAddScreenState extends State<TodoEditAddScreen> {
  final _titleController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isCompleted = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    if (widget.item != null) {
      _titleController.value = TextEditingValue(text: widget.item!.title);
      isCompleted.value = widget.item!.completed;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item != null
            ? AppLocalizations.of(context)!.edit
            : AppLocalizations.of(context)!.create),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 24),
                Text(
                  AppLocalizations.of(context)!.fill,
                  style: TextStyles.textButton(color: AppColors.focusedField),
                ),
                const SizedBox(height: 16),
                CTextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  validator: (p02) {
                    if (p02 != null && p02.trim().isEmpty) {
                      return AppLocalizations.of(context)!.fill;
                    }
                    return null;
                  },
                  controller: _titleController,
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.status,
                      style:
                          TextStyles.textButton(color: AppColors.focusedField),
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: isCompleted,
                      builder: (context, bool done, _) {
                        return Checkbox(
                          value: done,
                          onChanged: (value) {
                            isCompleted.value = value!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: BlocConsumer<TodosBloc, TodosState>(
                    listener: (context, state) {
                      context.maybePop();
                    },
                    listenWhen: (previous, current) =>
                        previous.todoIsLoading && !current.todoIsLoading,
                    builder: (context, state) {
                      return MiniBtn(
                        isLoading: state.todoIsLoading,
                        onTap: () async {
                          if (formKey.currentState?.validate() == true) {
                            if (widget.item != null) {
                              context.read<TodosBloc>().add(
                                    TodosEvent.editTodo(
                                      id: widget.item!.id,
                                      completed: isCompleted.value,
                                      title: _titleController.text,
                                    ),
                                  );
                            } else {
                              context.read<TodosBloc>().add(
                                    TodosEvent.addTodo(
                                      completed: isCompleted.value,
                                      title: _titleController.text,
                                    ),
                                  );
                            }
                          }
                        },
                        text: AppLocalizations.of(context)!.finish,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
