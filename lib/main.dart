import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBMuQiKsmEeQj-DM6CR5azcMRwYo1v9l94",
          authDomain: "essalud-ayacucho-18798.firebaseapp.com",
          projectId: "essalud-ayacucho-18798",
          storageBucket: "essalud-ayacucho-18798.appspot.com",
          messagingSenderId: "678437791011",
          appId: "1:678437791011:web:3cc1bcbd68ed7a269e1896",
          measurementId: "G-ERJ942GVN4"));

  runApp(
    GetMaterialApp(
      title: "EsSalud",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
