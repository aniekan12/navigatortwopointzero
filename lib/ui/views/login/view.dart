import 'package:devfest_handson/navigation/pages.dart';
import 'package:devfest_handson/ui/base/base_view.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class LoginView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.loginPath,
        key: ValueKey(AppPages.loginPath),
        child: const LoginView());
  }

  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      model: LoginViewModel(),
      onModelReady: (model) => model.init(context),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hiiiii this is login'),
              ],
            ),
          ),
        );
      },
    );
  }
}
