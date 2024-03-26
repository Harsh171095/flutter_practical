// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_practical/screen/list/view%20model/item_list.viewmodel.dart';
import 'package:provider/provider.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});
  static String routName = "/item_list";

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ItemListViewModel themeProvider =
        Provider.of<ItemListViewModel>(context, listen: false);
    themeProvider.getItemList(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SafeArea(
        child: Consumer<ItemListViewModel>(
            builder: (context, themeProvider, child) {
          print("object ${themeProvider.arrList.length}");
          return ListView.builder(
              itemCount: themeProvider.arrList.length,
              itemBuilder: (context, index) {
                return itemBuilder(
                    context, index, themeProvider.arrList[index]);
              });
        }),
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index, Map object) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(object["title"].toString(),
                style: Theme.of(context).textTheme.headline4),
            Text(object["body"].toString(),
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
