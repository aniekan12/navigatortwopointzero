import 'package:devfest_handson/navigation/app_state_manager.dart';
import 'package:devfest_handson/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  init(BuildContext context) {
    appContext = context;
    appStateManager = Provider.of<AppStateManager>(context, listen: false);
  }
}
