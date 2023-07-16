import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

//Mixin permite a herença multipla, logo posso usar esse load em toda classe que for State / stateful

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        //nao permitir q o usuario saia do load, ate carregar de fato
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white,
            size: 60,
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  void dispose() {
    hideLoader();
    super.dispose();
  }
}
