import 'package:flutter/material.dart';
import 'package:new_project/view/bookmark.dart';
import 'package:new_project/view/home_page.dart';
import 'package:new_project/view/second_page.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> HomePage(),
        "/second":(context)=> SecondPage(),
        "/book":(context)=> BookMarkPage(),
      },
    ),
  );
}
