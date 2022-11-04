class AuthConroller {
  Future<dynamic> AccountLogin(String UserName, Password) async {
    dynamic status;
    Map logincredits = {
      'user': UserName.toString().toUpperCase(),
      'password': Password.toString(),
      'com': "ABL",
      'ip': "",
      'lon': 0.toString(),
      'lat': 0.toString()
    };

    // Response response = await postRequest(LoginApi, logincredits);
    // if (response.statusCode == 200) {
    //   var result = jsonDecode(response.body);
    //   Logger().i(response.body);
    //   if (result['Success'] == true) {
    //     status = true;
    //     User user = userFromJson(jsonEncode(result['Data']));
    //     await SessionManage.saveUserSession(User_Data, user);
    //     await SessionManage.saveSession(CompanyID, user.com.toString());
    //     SecureStoreage.saveInSecureStorage(Is_Login, Is_Login_Value);
    //   } else {
    //     status = result['Message'].toString();
    //   }
    // } else {
    //   status = response.statusCode;
    // }
    // return status;
  }
}
