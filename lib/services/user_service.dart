import 'package:testbloc/model/http_model.dart';
import 'package:http/http.dart' as http;

class FetchUsers {
  Future<List<UserModel>?> getUsers() async {
    var client = http.Client();

    var url = Uri.parse("https://gorest.co.in/public/v1/users");

    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;

      return userModelFromJson(json);
    } else {
      return null;
    }
  }
}
