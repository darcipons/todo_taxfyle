import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Setup Flutter environment',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: TodoCheckbox(isChecked, checkboxCallback),
    );
  }
}

class TodoCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TodoCheckbox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.purple[300],
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}