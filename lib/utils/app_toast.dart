import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';


class AppToast {
  static show({required String message, required BuildContext context}) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Theme.of(context).highlightColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: TextStyle(
                color: Theme.of(context).backgroundColor, fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );

    showToastWidget(
      toast,
      position: ToastPosition.bottom,
      duration: const Duration(seconds: 2),
    );
  }


  static success({required String message, required BuildContext context}) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Theme.of(context).highlightColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check, color: Theme.of(context).primaryColor),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            message,
            style: TextStyle(
                color: Theme.of(context).backgroundColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );

    showToastWidget(
      toast,
      position: ToastPosition.bottom,
      duration: const Duration(seconds: 2),
    );
  }

  //success & undo
  static successAndUndo(
      {required String message, required Function undoPressed, required BuildContext context}) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Theme.of(context).highlightColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check, color: Theme.of(context).primaryColor),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            message,
            style: TextStyle(
                color: Theme.of(context).backgroundColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 12.0,
          ),
          GestureDetector(
            onTap: (){
              undoPressed();
            },
            child: const Text(
              'Undo',
              style: TextStyle(
                  color: Color(0xFF9D98F9),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );

    showToastWidget(
      toast,
      position: ToastPosition.bottom,
      duration: const Duration(seconds: 2),
    );
  }
}
