import 'package:flutter/material.dart';
import 'package:testbloc/controllers/user_controller.dart';
import 'package:testbloc/model/http_model.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  String apiUrl = "https://gorest.co.in/public/v1/users";
  List<UserModel> users = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    users = await UserController().getData();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            child: const Text("Hello"),
          );
        },
      ),
    );
  }
}
