import 'package:flutter/material.dart';

import '../list/item_list.screen.dart';
import '../patterns list/patterns_list.screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static String routName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(PatternsListScreen.routName);
                },
                child: const Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Patterns"),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(ItemListScreen.routName);
                },
                child: const Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("API Calls"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
