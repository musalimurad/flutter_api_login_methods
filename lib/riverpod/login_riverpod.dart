import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_api_methods/service/service.dart';
import 'package:flutter_api_methods/views/home.dart';
import 'package:flutter_api_methods/views/login.dart';
import 'package:flutter_api_methods/widgets/loading_popup.dart';
import 'package:grock/grock.dart';

class LoginRiverpod extends ChangeNotifier {
  Service service = Service();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = true;
  void fetch() {
    try {
      loadingPopup();

      service
          .loginCall(username: username.text, password: password.text)
          .then((value) {
        if (value != null) {
          Grock.back();
          Grock.toRemove(Home());
        } else {
          debugPrint(value?.status.toString());
          Grock.back();
          Grock.snackBar(
              title: "Xeta", description: value?.status.toString() ?? "Xeta.");
        }
      });
    } catch (e) {
      rethrow;
    }
  }
}
