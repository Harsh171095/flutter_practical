// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_practical/screen/main/main.screen.dart';
import 'package:provider/provider.dart';

import 'screen/list/item_list.screen.dart';
import 'screen/list/view model/item_list.viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemListViewModel>(
      create: (context) => ItemListViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto', // Set custom font family
          textTheme: const TextTheme(
            headline6: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold), // Adjust headline font size
            headline4: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 18), // Adjust body font size
            bodyText1: TextStyle(fontSize: 14),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: MainScreen.routName,
        routes: {
          MainScreen.routName: (context) => MainScreen(),
          ItemListScreen.routName: (context) => ItemListScreen(),
        },
      ),
    );
  }
}
