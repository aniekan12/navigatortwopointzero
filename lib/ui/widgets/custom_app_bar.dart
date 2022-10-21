import 'package:flutter/material.dart';

class AccelerateAppBar {
  static show(
          {required String title,
          bool showBack = true,
          double fontSize = 20,
          Key? key,
          bool automaticallyImplyLeading = false,
          Widget? leading,
          List<Widget>? actions,
          PreferredSizeWidget? bottom}) =>
      AppBar(
        key: key,
        leading: leading,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: showBack,
        iconTheme: const IconThemeData(color: Colors.black, size: 20),
        automaticallyImplyLeading: automaticallyImplyLeading,
        elevation: 0,
        actions: actions,
        bottom: bottom,
      );
}
