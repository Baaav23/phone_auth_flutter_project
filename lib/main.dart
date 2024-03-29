import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth_flutter_project/Provider_Bavly/auth_provider.dart';
import 'package:phone_auth_flutter_project/screen_Bavly/Welcome_Screen_Bavly.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Auth_Provider_Bavly())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Phone auth',
        home: welcome(),
      ),
    );
  }
}
