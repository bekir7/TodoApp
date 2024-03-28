import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/noteDatabase.dart';
import 'package:todoapp/pages/notesPage.dart';
import 'package:todoapp/theme/themeProvider.dart';

void main() async {
  //initialize db
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => NoteDatabase()),
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const NotesPage(),
        theme: Provider.of<ThemeProvider>(context).themeData);
  }
}
