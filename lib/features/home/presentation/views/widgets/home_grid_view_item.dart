import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRouter.kNoteConentScreen),
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
