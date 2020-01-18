import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_tile.dart';
import 'package:todo_taxfyle/models/todo.dart';

class CompletedList extends StatefulWidget {
  final List<Task> todos;

  CompletedList(this.todos);

  @override
  _CompletedListState createState() => _CompletedListState();
}

class _CompletedListState extends State<CompletedList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (context, index) {
        if (widget.todos[index].isDone != false) {
          return TodoTile(
            todoTitle: widget.todos[index].name,
            todoDescription: widget.todos[index].description,
            isChecked: widget.todos[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(
                () {
                  widget.todos[index].toggleDone();
                },
              );
            },
          );
        } else {
          return null;
        }
      },
    );
  }
}
