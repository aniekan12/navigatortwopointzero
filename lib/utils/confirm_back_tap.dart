import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_toast.dart';

class ConfirmBackTap extends StatefulWidget {
  final Widget child;
  const ConfirmBackTap({Key? key, required this.child}) : super(key: key);

  @override
  _ConfirmBackTapState createState() => _ConfirmBackTapState();
}

class _ConfirmBackTapState extends State<ConfirmBackTap> {
  bool get _isAndroid => Theme.of(context).platform == TargetPlatform.android;
  DateTime? backButtonPressedTime;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _ensureThatContextContainsScaffold();
      return true;
    }());

    if (_isAndroid) {
      return WillPopScope(
        onWillPop: _onWillPop,
        child: widget.child,
      );
    } else {
      return widget.child;
    }
  }

  Future<bool> _onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool pressAgain = backButtonPressedTime == null ||
        currentTime.difference(backButtonPressedTime!) >
            const Duration(seconds: 3);

    if (pressAgain) {
      backButtonPressedTime = currentTime;
      AppToast.show(message: 'Press back again to exit', context: context);
      return false;
    }

    if (Platform.isAndroid) {
      SystemNavigator.pop();
    }
    return true;
  }

  /// Throws a [FlutterError] if this widget was not wrapped in a [Scaffold].
  void _ensureThatContextContainsScaffold() {
    if (Scaffold.maybeOf(context) == null) {
      throw FlutterError(
        '`ConfirmBackTap` must be wrapped in a `Scaffold`.',
      );
    }
  }
}
