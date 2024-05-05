import 'package:get/get.dart';

import '../../domain/entities/todo.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/mini_btn.dart';
import '../../../../infrastructure/statics/consts.dart';
import '../../../../infrastructure/statics/styles.dart';
import '../../../../common/widgets/text_field.dart';
import 'todos_controller.dart';

class TodoEditAddScreen extends StatefulWidget {
  const TodoEditAddScreen({super.key, this.item});
  final TodoModel? item;
  @override
  State<TodoEditAddScreen> createState() => _TodoEditAddScreenState();
}

class _TodoEditAddScreenState extends State<TodoEditAddScreen> {
  final _todosController = Get.find<TodosController>();
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
        title: Text(widget.item != null ? 'edit'.tr : 'create'.tr),
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
                  'fill'.tr,
                  style: TextStyles.textButton(color: AppColors.focusedField),
                ),
                const SizedBox(height: 16),
                CTextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  validator: (p02) {
                    if (p02 != null && p02.trim().isEmpty) {
                      return 'fill'.tr;
                    }
                    return null;
                  },
                  controller: _titleController,
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'status'.tr,
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
                  child: GetBuilder<TodosController>(
                    builder: (state) {
                      return MiniBtn(
                        isLoading: state.todoIsLoading,
                        onTap: () async {
                          if (formKey.currentState?.validate() == true) {
                            if (widget.item != null) {
                              await _todosController.editTodo(
                                  id: widget.item!.id,
                                  completed: isCompleted.value,
                                  title: _titleController.text);
                            } else {
                              await _todosController.addTodo(
                                  completed: isCompleted.value,
                                  title: _titleController.text);
                            }
                          }
                          Get.back();
                        },
                        text: 'finish'.tr,
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
