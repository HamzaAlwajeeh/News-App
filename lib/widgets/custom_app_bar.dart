import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

PreferredSizeWidget? customAppBar({String newsTitle = kGeneralNews}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          newsTitle,
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const Text(
          ' News',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ],
    ),
  );
}
