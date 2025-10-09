import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lesson_m2i_lyon_flutter/models/todo.dart';
import 'package:lesson_m2i_lyon_flutter/screens/base_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        Text(
          "Todos",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final res = await http.get(
              Uri.https("jsonplaceholder.typicode.com", "/todos/15"),
            );
            print(res.body);
            var jsonResponse = json.decode(res.body);
            print(jsonResponse["title"]);
            var todo = Todo.fromJson(jsonResponse);
            print(todo.title);
          },
          child: Text("Faire la requête"),
        ),
      ],
    );
  }
}
