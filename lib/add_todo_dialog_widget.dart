import 'package:flutter/material.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({Key? key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add Todo"),
            const SizedBox(height: 8,),
            TodoFormWidget(
              onChangedTitle: (title)=> setState(()=> this.title = title,
              onChangedDescription: (description) =>
              setState(() => this.description=description),
              onSavedTodo: (){},
            ),
          ],
        ),
      );
}
