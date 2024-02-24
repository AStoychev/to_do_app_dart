// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
                value: taskComplete,
                onChanged: onChanged,
                activeColor: Colors.black),
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskComplete
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow[600], borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
