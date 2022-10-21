import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class AppLoader {
  static showOverlay(BuildContext context){
    return Loader.show(context, progressIndicator: const OverlayWidget(), overlayColor: Theme.of(context).backgroundColor );
  }

  static hide(){
    if(Loader.isShown) {
      return Loader.hide();
    }
  }

  static Widget showWidget(BuildContext context){
    return Container(
      /*
      TODO
      Add loader widget build here; to be used when an overlay is not required
       */
    );
  }
}

class OverlayWidget extends StatelessWidget {
  final String text;

  const OverlayWidget({Key? key, this.text = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          /*
          TODO
          Add overlay loader widget build here
           */
        )
      ),
    );
  }
}
