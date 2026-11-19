import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tasks_view_model.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key, required this.taskId});

  final int? taskId;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TasksViewModel>();
    final task = viewModel.findTask(taskId);

    if (task == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Detalle de tarea')),
        body: const Center(child: Text('No se encontró la tarea solicitada.')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Detalle de tarea')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            Text(task.description),
            const SizedBox(height: 16),
            Chip(label: Text('Prioridad: ${task.priority}')),
            const SizedBox(height: 12),
            Text(task.isCompleted ? 'Estado: completada' : 'Estado: pendiente'),
            const SizedBox(height: 12),
            Text('Usuario: ${task.userId}'),
            const Spacer(),
            FilledButton.tonalIcon(
              onPressed: () {
                context.read<TasksViewModel>().toggleCompleted(task.id);
              },
              icon: Icon(task.isCompleted ? Icons.undo : Icons.check),
              label: Text(
                task.isCompleted
                    ? 'Marcar como pendiente'
                    : 'Marcar como completada',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
