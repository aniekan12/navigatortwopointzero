import 'package:devfest_handson/navigation/pages.dart';
import 'package:devfest_handson/ui/base/base_view.dart';
import 'package:devfest_handson/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SplashView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.splashPath,
        key: ValueKey(AppPages.splashPath),
        child: const SplashView());
  }

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) => model.init(context),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                AppButton(
                    onTap: () => model.appStateManager.goToSignUp(),
                    buttonText: 'Sign up'),
                const SizedBox(height: 20),
                AppButton(
                    onTap: () => model.appStateManager.goToLogin(),
                    buttonText: 'Login'),
                const SizedBox(height: 50),
              ],
            ),
          ),
        );
      },
    );
  }
}
