import 'dart:developer';

import 'package:flutter/material.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Card is pressed');
      },
      child: const Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                'ihjftiocjcvtkoikkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkmmmmmmmmmmmmmmmmmmmmmmmmhhhhhhhhhhhhhhhhhhh',
                style: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
