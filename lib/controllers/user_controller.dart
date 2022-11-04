import 'package:testbloc/model/http_model.dart';
import 'package:testbloc/services/user_service.dart';

class UserController {
  List<UserModel> users = [];
  var isLoaded = false;
  getData() async {
    users = (await FetchUsers().getUsers())!;
    // if(users != null){
    //   setSta
    // }
  }
}
