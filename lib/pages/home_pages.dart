import 'package:flutter/material.dart';
import 'package:todolist/models/todo_model.dart';
import 'package:todolist/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoModel> todos = [];
  TextEditingController todoController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // NOTE : TITLE
            Text(
              'Todo App',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // NOTE TODOLIST
            Expanded(
              child: Column(
                children: todos
                    .map(
                      (item) => TodoItem(
                        title: item.title,
                        onPressedTwo: () async {},
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                bottom: 50,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: todoController,
                        //onChanged: (value) {
                        //print(value);
                        //},
                        decoration:
                            InputDecoration.collapsed(hintText: 'Add Todo...'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(todoController.text);
                        setState(() {
                          todos.add(
                            TodoModel(
                              title: todoController.text,
                              isDone: false,
                            ),
                          );

                          todoController.text = '';
                        });
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
