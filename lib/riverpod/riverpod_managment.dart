import 'package:flutter/cupertino.dart';
import 'package:flutter_api_methods/riverpod/login_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((_) => LoginRiverpod());
