import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app/app.dart';
import 'src/core/cache/secure_storage.dart';
import './src/app/di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SecureCacheHelper.init();
  di.init();
  runApp(const KuzingaApp());
}
