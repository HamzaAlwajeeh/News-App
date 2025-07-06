import 'package:flutter/material.dart';

PreferredSizeWidget? customAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'News',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const Text(
          ' Cloud',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    ),
  );
}
