import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practical/widgets/toast.dart';
import 'package:http/http.dart' as http;

class ItemListViewModel extends ChangeNotifier {
  List _arrList = [];

  List get arrList => _arrList;

  getItemList(BuildContext context) async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/'));

      if (response.statusCode == 200) {
        var list = json.decode(response.body);
        print(list);
        this._arrList = list;

        // this._arrList = json;
      } else {
        showToast(context, message: "No Data Found");
      }
      notifyListeners();
    } catch (error) {
      print(error);
      showToast(context, message: error.toString());
    }
  }
}
