class Todo {
  int userId = 0;
  int id = 0;
  String title = "";
  bool completed = false;

  Todo.fromJson(Map<String, dynamic> json)
    : userId = json["userId"] as int,
      id = json["id"] as int,
      title = json["title"] as String,
      completed = json["completed"] as bool;
}
