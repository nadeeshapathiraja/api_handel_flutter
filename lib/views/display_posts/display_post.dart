import 'package:flutter/material.dart';

import '../../controllers/post_controller.dart';
import '../../model/post_model.dart';

class DisplayPost extends StatefulWidget {
  const DisplayPost({Key? key}) : super(key: key);

  @override
  State<DisplayPost> createState() => _DisplayPostState();
}

class _DisplayPostState extends State<DisplayPost> {
  late Future<List<Post>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = PostController().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Post>>(
        future: futurePost,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Container(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xff97FFFF),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data![index].title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(snapshot.data![index].body),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
