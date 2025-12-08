import 'package:flutter/material.dart';

class ContenuAppBar extends StatelessWidget {
  const ContenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Title,', style: TextStyle(fontSize: 26))],
          ),
        ],
      ),
    );
  }
}
