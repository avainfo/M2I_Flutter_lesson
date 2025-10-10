import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lesson_m2i_lyon_flutter/models/todo.dart';
import 'package:lesson_m2i_lyon_flutter/screens/base_page.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var db;

  @override
  void initState() {
    super.initState();
    db = FirebaseFirestore.instance;
  }

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
        Text("Todo(id): Name [userId] {X}"),
        // FutureBuilder(
        //   future: getData(),
        //   builder: (context, snapshot) => Text((snapshot.data as Todo).title),
        // ),
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

            final user = <String, dynamic>{
              "first": "Ada",
              "last": "Lovelace",
              "born": 1815,
            };
            /* {
             *   "first": "Ada",
             *   "last": "Lovelace",
             *   "born": 1815
             * }
             */

            db
                .collection("users")
                .add(user)
                .then(
                  (DocumentReference doc) =>
                      print('DocumentSnapshot added with ID: ${doc.id}'),
                );

            await db.collection("users").get().then((event) {
              for (var doc in event.docs) {
                print("${doc.id} => ${doc.data()}");
              }
            });
          },
          child: Text("Faire la requête"),
        ),
        ElevatedButton(
          onPressed: () async {
            Location location = Location();

            bool serviceEnabled;
            PermissionStatus permissionGranted;

            serviceEnabled = await location.serviceEnabled();
            if (!serviceEnabled) {
              serviceEnabled = await location.requestService();
              if (!serviceEnabled) {
                return;
              }
            }

            permissionGranted = await location.hasPermission();
            if (permissionGranted == PermissionStatus.denied) {
              permissionGranted = await location.requestPermission();
              if (permissionGranted != PermissionStatus.granted) {
                return;
              }
            }

            location.onLocationChanged.listen(
              (LocationData currentLocation) {
                print(currentLocation.latitude);
                print(currentLocation.longitude);

              },
            );
          },
          child: Text("Récupérer la localisation"),
        ),
      ],
    );
  }

  Future<Todo> getData() async {
    final res = await http.get(
      Uri.https("jsonplaceholder.typicode.com", "/todos/15"),
    );
    var jsonResponse = json.decode(res.body);
    var todo = Todo.fromJson(jsonResponse);
    return todo;
  }
}
