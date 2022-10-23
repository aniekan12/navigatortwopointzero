import 'package:devfest_handson/navigation/pages.dart';
import 'package:devfest_handson/ui/base/base_view.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class RegisterView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.registerPath,
        key: ValueKey(AppPages.registerPath),
        child: const RegisterView());
  }

  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      model: RegisterViewModel(),
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
                Text('hiiiii this is signUp'),
              ],
            ),
          ),
        );
      },
    );
  }
}
