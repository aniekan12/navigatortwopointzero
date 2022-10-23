import 'package:devfest_handson/navigation/pages.dart';
import 'package:devfest_handson/ui/base/base_view.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class HomeView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.homePath,
        key: ValueKey(AppPages.homePath),
        child: const HomeView());
  }

  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(),
      onModelReady: (model) => model.init(context),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacer(),
                // AppButton(onTap: () {}, buttonText: 'Sign up'),
                // const SizedBox(height: 20),
                // AppButton(
                //     onTap: () => model.appStateManager.goToLogin(),
                //     buttonText: 'Login'),
                // const SizedBox(height: 50),
              ],
            ),
          ),
        );
      },
    );
  }
}
