import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testbloc/components/custom_button.dart';
import 'package:testbloc/components/custom_text.dart';
import 'package:testbloc/components/custom_text_form_field.dart';
import 'package:testbloc/utils/util_functions.dart';
import 'package:testbloc/views/home_screen/home_screen.dart';

import '../../blocs/login_bloc.dart';
import '../../utils/AlertDialog.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _loginFromKey = GlobalKey<FormState>();
  final loginBloc = LoginBloc();

  final email = TextEditingController(text: "1800012");
  final password = TextEditingController(text: "ABC@123");
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: BlocListener(
          bloc: loginBloc,
          listener: (context, state) {
            if (state is LoginChecking) {
              ShowLoadingDialog(context);
            }
            if (state is LoginSuccess) {
              DismissLoadingDialog(context);
              UtilFunctions.navigateTo(context, const HomeScreen());
            }
            if (state is LoginError) {
              DismissLoadingDialog(context);
              ShowErrorDialog(context, "Login Error", state.error);
            }
          },
          child: Form(
            key: _loginFromKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: "LogIn",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
                CustomTextFormField(
                  lable: "Email",
                  controller: email,
                ),
                CustomTextFormField(
                  lable: "Password",
                  controller: password,
                ),
                CustomButton(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    if (_loginFromKey.currentState!.validate()) {
                      loginBloc.add(
                        UserLogin(
                          UserName: "1800012",
                          Password: "ABC@123",
                        ),
                      );
                    }
                    // UserLogin(
                    //   UserName: email.text,
                    //   Password: password.text,
                    // );
                    // UtilFunctions.navigateTo(
                    //   context,
                    //   const HomeScreen(),
                    // );
                  },
                  text: "LogIn",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
