import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class AppNotification {
  AppNotification._();
  static Future<dynamic> success({required message, required BuildContext context}){
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      titleText: Text('Success',
        style: TextStyle(fontSize: 12, color: Theme.of(context).backgroundColor, fontWeight: FontWeight.bold),
      ),
      messageText: Text(message,
        style: TextStyle(fontSize: 12, color: Theme.of(context).backgroundColor),
      ),
      backgroundColor: Theme.of(context).highlightColor,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(6),
      icon: const Icon(
        Icons.check,
        size: 20,
        color: Colors.green,
      ),
      duration: const Duration(milliseconds: 2500),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static Future<dynamic> error({required message, required BuildContext context}){
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      titleText: const Text('Error',
        style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      messageText: Text(message ?? 'Something went wrong',
        style: const TextStyle(fontSize: 11.5, color: Colors.white),
      ),
      backgroundColor: Colors.red,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(6),
      icon: const Icon(
        Icons.cancel,
        size: 20,
        color: Colors.white,
      ),
      duration: const Duration(milliseconds: 2500),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static Future<dynamic> info({required message, required BuildContext context, String title = 'Info'}){
    Flushbar flush =  Flushbar(
      shouldIconPulse: true,
      titleText: Text(title,
        style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      messageText: Text(message ?? 'Info',
        style: const TextStyle(fontSize: 11.5, color: Colors.white),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(6),
      icon: const Icon(
        Icons.info_outline,
        size: 20,
        color: Colors.white,
      ),
      duration: const Duration(milliseconds: 2500),
      animationDuration: const Duration(milliseconds: 500),
    );

    return flush.show(context);
  }
  static Future<dynamic> notification({required message, required BuildContext context, required String title}){
    Flushbar flush =  Flushbar(
      onTap: (flush){},
      shouldIconPulse: true,
      titleText: Text(title,
        style: TextStyle(fontSize: 15, color: Theme.of(context).backgroundColor, fontWeight: FontWeight.bold),
      ),
      messageText: Text(message ?? 'Notification',
        style: TextStyle(fontSize: 11.5, color: Theme.of(context).backgroundColor),
      ),
      backgroundColor: Theme.of(context).highlightColor,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(6),
      icon: Icon(
        Icons.notifications_on_outlined,
        size: 20,
        color: Theme.of(context).backgroundColor,
      ),
      duration: const Duration(milliseconds: 2500),
      animationDuration: const Duration(milliseconds: 500),
    );

    return flush.show(context);
  }
}