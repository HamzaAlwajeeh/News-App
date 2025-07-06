import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "assets/images/Be.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Large Title Should be places in the place Large Title Should be places in the place",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 8),
        Text(
          "This is Sub title Should be places in the place",
          maxLines: 2,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}
