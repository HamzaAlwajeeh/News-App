import 'package:flutter/material.dart';

class LodingSign extends StatelessWidget {
  const LodingSign({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
