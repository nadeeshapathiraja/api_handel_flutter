import 'package:http/http.dart';

import '../model/http_model.dart';

Future<Response> postRequest(String url, Object body, {String? token}) async {
  return await post(Uri.parse(url),
      body: body,
      headers: {'Content-Type': 'application/x-www-form-urlencoded'});
}

Future<Response> getRequest(String url, {String? token}) async {
  return await get(Uri.parse(url),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'});
}


