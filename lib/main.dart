import 'package:demo/set_location.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrapcycle',
      debugShowCheckedModeBanner: false,
      home: const SetAddress(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
