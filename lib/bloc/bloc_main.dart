import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoshintech_project/models/tasks.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial());

  Stream<TaskState> mapEventToState(TaskEvent event) async* {
    if (event is LoadTasks) {
      yield TaskLoading();
      try {
        final List<Task> tasks = await _fetchTasksFromJson();
        yield TaskLoaded(tasks);
      } catch (e) {
        yield TaskLoadError('Failed to load tasks: $e');
      }
    }
  }

  Future<List<Task>> _fetchTasksFromJson() async {
    // Load JSON from local file and parse it
    final String jsonString = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    // Convert JSON to Task model
    final List<Task> tasks = jsonList.map((json) => Task.fromJson(json)).toList();
    return tasks;
  }
}

// Define Events
abstract class TaskEvent {}

class LoadTasks extends TaskEvent {}

// Define States
abstract class TaskState {}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TaskLoaded extends TaskState {
  final List<Task> tasks;

  TaskLoaded(this.tasks);
}

class TaskLoadError extends TaskState {
  final String errorMessage;

  TaskLoadError(this.errorMessage);
}
