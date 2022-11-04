import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testbloc/api_handel/AppApi.dart';

import '../model/post_model.dart';

class BaseClient {
  var client = http.Client();

  //Get Method
  Future<List<Post>> getPosts(String api) async {
    var url = Uri.parse(baseUrl + api);

    var headers = {
      'pc': 'RNGD',
      'com': 'ABL',
      'type': 'C',
    };

    var response = await client.get(url, headers: headers);
    // var response = await client.get(url);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

//Post Method
  Future<dynamic> postPosts(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);

    var playLoad = json.encode(object);

    var headers = {
      'pc': 'RNGD',
      'com': 'ABL',
      'type': 'C',
    };

    var response = await client.post(url, body: playLoad, headers: headers);
    // var response = await client.get(url);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

//Pull Method
  Future<dynamic> putPosts(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);

    var playLoad = json.encode(object);

    var headers = {
      'pc': 'RNGD',
      'com': 'ABL',
      'type': 'C',
    };

    var response = await client.put(url, body: playLoad, headers: headers);
    // var response = await client.get(url);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

//Delete Method
  Future<dynamic> delPosts(String api) async {
    var url = Uri.parse(baseUrl + api);

    var headers = {
      'pc': 'RNGD',
      'com': 'ABL',
      'type': 'C',
    };

    var response = await client.delete(url, headers: headers);
    // var response = await client.get(url);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
