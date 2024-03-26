import 'package:flutter/material.dart';

class PatternsListScreen extends StatelessWidget {
  static String routName = "/patterns";

  PatternsListScreen({super.key});
/*
 "*\n**\n***\n****",
    "   *\n  **\n ***\n****",
    "****\n***\n**\n*",
    "****\n ***\n  **\n   *",
    "    *    \n   * *   \n  * * *  \n * * * *",
    " * * * *\n  * * *  \n   * *   \n    *    ",
    "    *    \n   * *   \n  * * *  \n * * * *\n  * * *  \n   * *   \n    *    ",
*/
  List _arrayPatterns = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patterns"),
      ),
      body: ListView.builder(
          itemCount: _arrayPatterns.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: patterDisplay(index),
                ),
              ),
            );
          }),
    );
  }

  Widget patterDisplay(int index) {
    if (index == 0) {
      return pattern1();
    } else if (index == 1) {
      return pattern2();
    } else if (index == 2) {
      return pattern3();
    } else if (index == 3) {
      return pattern4();
    } else {
      return pattern5();
    }
  }

  Widget pattern1() {
    List<Widget> children = [];

    for (var i = 0; i < 5; i++) {
      List<Widget> rowChildren = [];
      for (var j = 0; j < (i + 1); j++) {
        rowChildren.add(Text("*"));
      }
      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      children: children,
    );
  }

  Widget pattern2() {
    List<Widget> children = [];

    for (var i = 0; i < 5; i++) {
      List<Widget> rowChildren = [];
      for (var j = 0; j < (5 - i); j++) {
        rowChildren.add(Text("*"));
      }
      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      children: children,
    );
  }

  Widget pattern3() {
    int num = 5;
    List<Widget> children = [];

    for (var i = 0; i < num; i++) {
      List<Widget> rowChildren = [];
      for (var j = num; j > i; j--) {
        rowChildren.add(Text(" "));
      }
      for (var j = 0; j < (i + 1); j++) {
        rowChildren.add(Text("* "));
      }
      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      children: children,
    );
  }

  Widget pattern4() {
    int num = 5;
    List<Widget> children = [];

    for (var i = 0; i < num; i++) {
      List<Widget> rowChildren = [];

      for (var j = 0; j < (i + 1); j++) {
        rowChildren.add(Text(" "));
      }

      for (var j = 0; j < (num - i); j++) {
        rowChildren.add(Text(" *"));
      }

      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget pattern5() {
    int num = 5;
    List<Widget> children = [];

    for (var i = 0; i < num; i++) {
      List<Widget> rowChildren = [];
      for (var j = num; j > i; j--) {
        rowChildren.add(Text(" "));
      }
      for (var j = 0; j < (i + 1); j++) {
        rowChildren.add(Text("* "));
      }
      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    for (var i = 0; i < (num - 1); i++) {
      List<Widget> rowChildren = [];

      for (var j = 0; j < (i + 1); j++) {
        rowChildren.add(Text(" "));
      }

      for (var j = 0; j < ((num - 1) - i); j++) {
        rowChildren.add(Text(" *"));
      }

      children.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      children: children,
    );
  }
}
