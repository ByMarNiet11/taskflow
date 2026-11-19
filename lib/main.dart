import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/taskflow_app.dart';
import 'features/tasks/data/local_task_repository.dart';
import 'features/tasks/presentation/tasks_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TasksViewModel(LocalTaskRepository()),
      child: const TaskFlowApp(),
    ),
  );
}
